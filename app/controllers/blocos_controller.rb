class BlocosController < ApplicationController
  def index
    @blocos = Bloco.all
  end
  
  def show
    @bloco = Bloco.find(params[:id])
  end
  
  def new
    @bloco = Bloco.new
  end
  
  def create
    @bloco = Bloco.new(params[:bloco])
    if @bloco.save
      flash[:notice] = "Successfully created bloco."
      redirect_to @bloco
    else
      render :action => 'new'
    end
  end
  
  def edit
    @bloco = Bloco.find(params[:id])
  end
  
  def update
    @bloco = Bloco.find(params[:id])
    if @bloco.update_attributes(params[:bloco])
      flash[:notice] = "Successfully updated bloco."
      redirect_to @bloco
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @bloco = Bloco.find(params[:id])
    @bloco.destroy
    flash[:notice] = "Successfully destroyed bloco."
    redirect_to blocos_url
  end
end
