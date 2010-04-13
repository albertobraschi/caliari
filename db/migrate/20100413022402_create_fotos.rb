class CreateFotos < ActiveRecord::Migration
  def self.up
    create_table :fotos do |t|
      t.string :titulo
      t.string :produto_id
      t.string :foto_file_name
      t.string :foto_content_type
      t.integer :foto_file_size
      t.datetime :foto_updated_at
      t.boolean :status, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :fotos
  end
end

