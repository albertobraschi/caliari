class CreatePaginas < ActiveRecord::Migration
  def self.up
    create_table :paginas do |t|
      t.string :titulo
      t.string :permalink
      t.text :conteudo
      t.boolean :status, :default => false
      t.string :meta_title
      t.text :meta_description
      t.text :meta_keyword
      t.timestamps
    end
  end

  def self.down
    drop_table :paginas
  end
end

