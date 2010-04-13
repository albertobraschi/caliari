class Produto < ActiveRecord::Base

  has_and_belongs_to_many :categorias

  has_permalink :titulo, :update => true

  def to_param
    permalink
  end
end

