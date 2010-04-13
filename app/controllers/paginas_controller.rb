class PaginasController < ApplicationController

  def index
    @carousel = true
    @paginas = Pagina.all
  end

  def show
    @pagina = Pagina.find(params[:id])
  end

end

