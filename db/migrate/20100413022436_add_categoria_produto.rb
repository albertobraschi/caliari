class AddCategoriaProduto < ActiveRecord::Migration
  def self.up
    create_table :categorias_produtos, :id => false, :force => true do |t|
      t.integer  :categoria_id
      t.integer  :produto_id
      t.timestamps
    end
  end

  def self.down
    drop_table :categorias_produtos
  end
end

