class FotosController < ApplicationController
  def index
    @fotos = Foto.all
  end
  
  def show
    @foto = Foto.find(params[:id])
  end
  
  def new
    @foto = Foto.new
  end
  
  def create
    @foto = Foto.new(params[:foto])
    if @foto.save
      flash[:notice] = "Successfully created foto."
      redirect_to @foto
    else
      render :action => 'new'
    end
  end
  
  def edit
    @foto = Foto.find(params[:id])
  end
  
  def update
    @foto = Foto.find(params[:id])
    if @foto.update_attributes(params[:foto])
      flash[:notice] = "Successfully updated foto."
      redirect_to @foto
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @foto = Foto.find(params[:id])
    @foto.destroy
    flash[:notice] = "Successfully destroyed foto."
    redirect_to fotos_url
  end
end
