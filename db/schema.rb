# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100413022436) do

  create_table "blocos", :force => true do |t|
    t.string   "titulo"
    t.string   "identificador"
    t.text     "conteudo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias", :force => true do |t|
    t.integer  "parent_id"
    t.integer  "proposed_parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.string   "nome"
    t.string   "permalink"
    t.boolean  "status",             :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias_produtos", :id => false, :force => true do |t|
    t.integer  "categoria_id"
    t.integer  "produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotos", :force => true do |t|
    t.string   "titulo"
    t.string   "produto_id"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.boolean  "status",            :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paginas", :force => true do |t|
    t.string   "titulo"
    t.string   "permalink"
    t.text     "conteudo"
    t.text     "meta_description"
    t.string   "meta_title"
    t.text     "meta_keyword"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.decimal  "preco",             :precision => 8, :scale => 2, :default => 0.0,   :null => false
    t.decimal  "preco_promocional", :precision => 8, :scale => 2, :default => 0.0,   :null => false
    t.boolean  "status",                                          :default => false
    t.string   "meta_title"
    t.text     "meta_description"
    t.text     "meta_keyword"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
