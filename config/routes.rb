Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  resources :favorites, only: [:create,:destroy]
  resources :relationships, only: [:create,:destroy]
  get 'relationships/follow'
  get 'relationships/followed'

  post 'favorites/:id', to: "favorites#create"
  resources :book_comments, only: [:create,:destroy]

  get 'search/search'

  root 'home#top'
  get 'home/about'
end