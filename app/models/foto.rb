class Foto < ActiveRecord::Base
  attr_accessible :titulo, :produto_id, :foto_file_name, :foto_content_type, :foto_file_size, :foto_updated_at
end
