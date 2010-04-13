ActionController::Routing::Routes.draw do |map|
  map.resources :fotos

  map.resources :produtos

  map.resources :categorias
  map.resources :paginas

  map.namespace :admin do |admin|
    admin.resources :categorias
    admin.resources :blocos
    admin.resources :paginas
    admin.resources :fotos
    admin.resources :produtos
  end

  map.with_options :controller => "pagina" do |p|
    p.people "/people",     :action => "index"
    p.person "/people/:id", :action => "show"
  end


  map.root :controller => :paginas, :action => :index
  map.admin "/admin", :controller => "admin/dashboard", :action => :index

  map.connect ':controller/:action/:id'
  #map.connect ':permalink'
  map.connect ':controller/:action/:id.:format'
end

