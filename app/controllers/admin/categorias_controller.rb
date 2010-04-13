class Admin::CategoriasController < ApplicationController

  layout "admin"

  def index
    @categorias = Categoria.all
  end

  def new
    @categoria = Categoria.new
  end

  def create
    @categoria = Categoria.new(params[:categoria])
    if @categoria.save
      redirect_to admin_categorias_path
    else
      render :action => 'new'
    end
  end

  def edit
    @categoria = Categoria.find_by_permalink(params[:id])
  end

  def update
    @categoria = Categoria.find_by_permalink(params[:id])
    if @categoria.update_attributes(params[:categoria])
      redirect_to admin_categorias_path
    else
      render :action => 'edit'
    end
  end

  def destroy
    @categoria = Categoria.find_by_permalink(params[:id])
    @categoria.destroy
    redirect_to admin_categorias_path
  end
end

