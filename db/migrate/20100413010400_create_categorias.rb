class CreateCategorias < ActiveRecord::Migration
  def self.up
    create_table :categorias do |t|
      t.integer :parent_id
      t.integer :proposed_parent_id
      t.integer :lft
      t.integer :rgt
      t.string :nome
      t.boolean :status, :default => false
      t.string :permalink
      t.string :meta_title
      t.text :meta_description
      t.text :meta_keyword
      t.timestamps
    end
  end

  def self.down
    drop_table :categorias
  end
end

