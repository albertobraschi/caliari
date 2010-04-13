class Categoria < ActiveRecord::Base

  has_and_belongs_to_many :produtos

  has_permalink :nome, :update => true

  def to_param
    permalink
  end

  acts_as_nested_set

  named_scope  :status, :conditions => { :status => true }

  named_scope :roots, :conditions => { :parent_id => nil, :status => true }
  named_scope :children, :conditions => { :parent_id => nil}

  validates_presence_of :nome, :message  => ", preenchimento obrigatório"
  validates_uniqueness_of :nome, :scope => :proposed_parent_id, :message  => ", valor deve ser único"
  belongs_to :parent, :class_name => "Categoria", :foreign_key => "parent_id"
  after_save :move_to_proposed_parent

  def validate_on_update
    errors.add(:parent_id, "Cannot be the same as the category id") if parent_id == id
    errors.add(:parent_id, "Cannot be one of this categories children") if all_children_ids.include?(parent_id)
  end

  def all_children_ids
    all_children.map(&:id)
  end

  def available_parents
    if new_record?
      self.class.find(:all, :order => "lft")
    else
      self.class.find(:all, :order => "lft", :conditions => ["id not in(#{[id].concat(all_children_ids).join(",")})"])
    end
  end

  private

  def move_to_proposed_parent
    unless proposed_parent_id.to_s == parent_id.to_s
      new_parent = self.class.find_by_id(proposed_parent_id)

      if new_parent.nil?
        self.move_to_right_of(self.class.roots.last)
      else
        unless new_parent.children.last.nil?
          self.move_to_right_of(new_parent.children.last)
        else
          self.move_to_child_of(new_parent)
        end
      end
    end
  end

end

