class Admin::ProdutosController < ApplicationController

  layout "admin"

  def index
    @produtos = Produto.all
  end

  def show
    @produto = Produto.find_by_permalink(params[:id])
  end

  def new
    @produto = Produto.new
  end

  def create
    @produto = Produto.new(params[:produto])
    if @produto.save
      flash[:notice] = "Successfully created produto."
      redirect_to admin_produtos_path
    else
      render :action => 'new'
    end
  end

  def edit
    @produto = Produto.find_by_permalink(params[:id])
  end

  def update
    @produto = Produto.find_by_permalink(params[:id])
    if @produto.update_attributes(params[:produto])
      redirect_to admin_produtos_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    @produto = Produto.find_by_permalink(params[:id])
    @produto.destroy
      redirect_to admin_produtos_path
  end
end

