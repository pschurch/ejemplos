Ejemplos::Application.routes.draw do
  resources :alumnos

  resources :asignaturas

  get "profesors/cursos"
  resources :profesors

  resources :categories

  resources :products

  get "productos/index2"
  resources :productos

  get "articles/list"
  resources :comments

  resources :articles

  get "usuarios/buscador"
  get "usuarios/resultado"
  match '/busqueda', :to => 'usuarios#index4'
  match '/paginacion_prm', :to => 'usuarios#index3'
  match '/paginacion', :to => 'usuarios#index2'
  resources :usuarios

  match '/contacto', :to => 'paginas#contacto'
  match 'datos', :to => 'paginas#datos'
  match 'ayuda', :to => 'paginas#ayuda'

  get "ruby_test/ejemplos"

  get "prueba/saludar"

  get "home/index"

  root :to => "home#index"
end
