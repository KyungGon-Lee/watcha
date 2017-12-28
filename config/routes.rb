Rails.application.routes.draw do

  # namespace :admin do
  #   get '/users/index' => 'users#index'
  # end

  resources :movies do
    member do
      post 'review'
    end
  end
  # post '/movies/:id/review' => 'movies#review' #위에 구문과 같음

  post '/posts/:id/comments' => 'posts#comments'

  get '/admin/index'
  get '/admin/posts'
  get '/admin/reviews'
  get '/posts/privacy' => 'posts#privacy' # 이거 아래에있으면 동작 안함

  put '/admin/to_manager/:id' => 'admin#to_manager'
  put '/admin/to_user/:id' => 'admin#to_user'

  put '/admin/reviews_destroy/:id' => 'admin#reviews_destroy'
  delete '/admin/posts_destroy/:id' => 'admin#posts_destroy'


  resources :posts
  devise_for :users

  root 'movies#index'

  get 'movies/show/:id' => 'movies#show'

  get 'movies' => 'movies#index'

  get 'home/index' => 'home#index'




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
