class Pagina < ActiveRecord::Base
  attr_accessible :titulo, :permalink, :conteudo, :meta_description, :meta_title, :meta_keyword
end
