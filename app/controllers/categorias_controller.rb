class CategoriasController < ApplicationController


  def show
    @categoria = Categoria.find_by_permalink(params[:id])
  end

end

