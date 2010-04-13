class CreateBlocos < ActiveRecord::Migration
  def self.up
    create_table :blocos do |t|
      t.string :titulo
      t.string :identificador
      t.text :conteudo
      t.timestamps
    end
  end
  
  def self.down
    drop_table :blocos
  end
end
