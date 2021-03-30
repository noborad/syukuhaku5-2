Rails.application.routes.draw do
  


  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
    get '/profile_edit', to: 'users#profile_edit', as: 'profile_edit'
    patch '/profile_update', to: 'users#profile_update', as: 'profile_update'
  end
  
  devise_for :users

  root 'rooms#home'
  # get 'rooms/:id/show', to: ""

  
  get 'users/account'
  get 'users/:id/show', to: 'users#show'
  get 'users/edit'
  get 'users/index'
  get 'users/:id/post_room', to: 'users#post_room'
  get 'users/:id/reserved_room', to: 'users#reserved_room'
  post 'users/:id/update', to: 'users#update'


  get 'rooms/keyword', to: 'rooms#keyword'
  resources :rooms

  
  get 'rooms/reservations/:id/new', to: "reservations#new"
  get 'reservations/index', to: "reservations#index"
  post 'reservations/:id/create', to: "reservations#create"
  post 'reservations/:id/update', to: "reservations#update"
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
