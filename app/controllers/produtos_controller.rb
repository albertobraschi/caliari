class ProdutosController < ApplicationController

  def show
    @produto = Produto.find_by_permalink(params[:id])
  end

end

