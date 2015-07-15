Rails.application.routes.draw do
  root 'welcome#home'

  get 'welcome/home', to: 'welcome#home'

  get 'regions/new', to: 'regions#new'

  get 'regions/create', to: 'regions#create'
  #
  # get 'regions/get'
  #
  get 'regions/search', to: 'regions#search'

  # get 'regions/update'
  #
  # get 'regions/delete'
  #
  get 'regions/index', to: 'regions#index'
  #
  # get 'sightings/new'
  #
  # get 'sightings/create'
  #
  get 'sightings/by_date', to: 'sightings#by_date'

  get 'sightings/index', to: 'sightings#index'

  get 'sightings/:id', to: 'sightings#get'

  #

  resources :species
  
  # get 'sightings/update'
  #
  # get 'sightings/delete'
  #
  # get 'species/new', to: 'species#new'
  #
  # get 'species/create', to: 'species#create'
  #
  # get 'species/get', to: 'species#get'
  # #
  # get 'species/search', to: 'species#search'
  #
  # get 'species/update'
  #
  # get 'species/delete', to: 'species#delete'
  # #
  # get 'species/index', to: 'species#index'

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
end
