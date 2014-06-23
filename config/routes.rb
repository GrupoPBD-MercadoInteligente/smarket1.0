Smarket::Application.routes.draw do
  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/'
          resources :transaccions

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

  resources :auditoria

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  #devise_scope :spree_current_user do
   # get '/login', :to => "devise/sessions#new"
    #get '/signup', :to => "devise/registrations#new"
    #delete '/logout', :to => "devise/sessions#destroy"
  #end
 # devise_scope :usuario do
  #  get '/login', :to => "devise/sessions#new"
   # get '/signup', :to => "devise/registrations#new"
    #delete '/logout', :to => "devise/sessions#destroy"
  #end
  devise_scope :spree_current_user do
    get '/login', :to => "devise/sessions#new" 
    get '/signup', :to => "devise/registrations#new"
    delete '/logout', :to => "devise/sessions#destroy"
  end

  devise_for :usuarios, :controllers => { registrations: 'registrations' }, :skip => [:sessions, :registrations] 
  as :usuario do
    get    "entrar",  to: "devise/sessions#new",         :as => :new_usuario_session
    post   "entrar",  to: "devise/sessions#create",      :as => :usuario_session
    delete "salir", to: "devise/sessions#destroy",     :as => :destroy_usuario_session
 
    get    "registrarse",  to: "devise/registrations#new",    :as => :new_usuario_registration
    post   "registrarse",  to: "devise/registrations#create", :as => :usuario_registration
  end
  
  
end