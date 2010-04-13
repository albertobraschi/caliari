class CreateProdutos < ActiveRecord::Migration
  def self.up
    create_table :produtos do |t|
      t.string :titulo
      t.text :descricao
      t.decimal :preco, :default =>	"0.0000", :precision => 8, :scale => 2, :null => false
      t.decimal :preco_promocional, :default =>	"0.0000", :precision => 8, :scale => 2, :null => false
      t.boolean :status, :default => false
      t.string :permalink
      t.string :meta_title
      t.text :meta_description
      t.text :meta_keyword
      t.timestamps
    end
  end

  def self.down
    drop_table :produtos
  end
end

