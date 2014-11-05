Rails.application.routes.draw do

  # this makes sure that the root of the website always goes to pictures/index.hmtl.erb
  root 'pictures#index'

  # This adds a /pictures route (http://website/pictures) and tells it to go to the index.html.erb file
  get 'pictures' => 'pictures#index'

  # these two routes are to invoke the create.html.erb and new.html.erb files when you post a create or get a new photo
  # When we click on the Submit button for this form it will go to POST /pictures. When we click on Submit we want
  # the new page to have the Title, Artist, and URL we put in the form.  This will invoke the create method in
  # the pictures_controller.rb file
  post 'pictures' => 'pictures#create'
  get 'pictures/new' => 'pictures#new' # this is also a new line of code

  # This allows you to see each picture individually based on it's ID.  Example: http://website/pictures/<id#>.  This
  # should go and run the show.html.erb file from the /app/views/pictures directory
  get 'pictures/:id' => 'pictures#show', as: 'picture'

  # This allows for the editing of pictures
  get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture" #invokes edit.html.erb
  patch 'pictures/:id' => "pictures#update" #invokes update.html.erb


  delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"


  # Ignore the comments below for now
  # They are just documentation
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
