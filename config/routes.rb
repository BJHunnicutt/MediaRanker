Rails.application.routes.draw do

  root to: 'homepages#index'

  get 'home/index' => 'homepages#index', as: 'index'

  get 'home/show' => 'homepages#show'

  get 'albums/index'

  get 'albums/show/:id' => 'albums#show', as: 'show_album'

  get 'albums/new'

  get 'albums/create'

  get 'albums/:id/edit' => 'albums#edit', as: 'edit_album'

  get 'albums/:id/update' => 'albums#update', as: 'update_album'

  get 'albums/destroy'

  post 'albums/upvote/:id'=> 'albums#upvote', as: 'upvote_album'

  get 'books/index'

  get 'books/show/:id' => 'books#show', as: 'show_book'

  get 'books/new'

  get 'books/create'

  get 'books/:id/edit' => 'books#edit', as: 'edit_book'

  get 'books/:id/update' => 'books#update', as: 'update_book'

  get 'books/destroy'

  post 'books/upvote/:id'=> 'books#upvote', as: 'upvote_book'

  get 'movies/index'

  get 'movies/show/:id' => 'movies#show', as: 'show_movie'

  get 'movies/new'

  get 'movies/create'

  get 'movies/:id/edit' => 'movies#edit', as: 'edit_movie'

  get 'movies/:id/update' => 'movies#update', as: 'update_movie'

  get 'movies/destroy'

  post 'movies/upvote/:id'=> 'movies#upvote', as: 'upvote_movie'

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
