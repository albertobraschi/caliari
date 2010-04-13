class Admin::DashboardController < ApplicationController

  layout "admin"

  def index
    @categorias = Categoria.all
  end


end

