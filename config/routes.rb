Smarket::Application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "home/datoscuenta"
  get "home/comovender"
  get "home/comocomprar"
  get "home/perfil"
  get "home/about"
  get "home/contacto"
  get "home/terminos"
  get "home/index"
  resources :tipo_transaccions

  resources :producto_rematados

  resources :provincia_units

  resources :propiedadclases

  resources :compra_venta_normals

  resources :clase_units

  resources :prod_of_necs

  resources :compra_venta_especials

  resources :producto_necesitados

  resources :compra_remates

  resources :notificacions

  resources :comisions

  resources :remates

  resources :pujas

  resources :valors

  resources :usuarios

  resources :propiedads

  resources :regions

  resources :productos

  resources :estado_remates

  resources :ganancia_liquidas

  resources :est_prod_of_necs

  resources :estado_notificacions

  resources :producto_ofertados

  resources :comunas

  resources :condicions


  root :to => "home#index"
  devise_for :usuarios, :controllers => { registrations: 'registrations' }, :skip => [:sessions, :registrations] 
  as :usuario do
    get    "entrar",  to: "devise/sessions#new",         :as => :new_usuario_session
    post   "entrar",  to: "devise/sessions#create",      :as => :usuario_session
    delete "salir", to: "devise/sessions#destroy",     :as => :destroy_usuario_session
 
    get    "registrarse",  to: "devise/registrations#new",    :as => :new_usuario_registration
    post   "registrarse",  to: "devise/registrations#create", :as => :usuario_registration
  end
  
  
end