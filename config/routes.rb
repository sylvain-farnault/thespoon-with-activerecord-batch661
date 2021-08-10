Rails.application.routes.draw do
  # CRUD FOR Restaurants
  resources :restaurants, only: [:index, :show]
  # Create
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'
  # # Read
  # # All restaurants
  # get 'restaurants', to: 'restaurants#index'
  # # One restaurant
  # get 'restaurants/:id', to: 'restaurants#show'

  # # Update
  # get 'restaurants/:id/edit', to: 'restaurants#edit'
  # patch 'restaurants/:id', to: 'restaurants#update'
  # # Delete
  # delete 'restaurants/:id', to: 'restaurants#destroy'

end
