Rails.application.routes.draw do

  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'books/new'
  get 'books/index'
  get 'books/show'
  devise_for :users

  root 'homes#top'
  get '/home/about'=>'homes#about',as:"about"

  resources :users, only: [:new, :index, :show]

  resources :books, only: [:index, :show, :edit]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
