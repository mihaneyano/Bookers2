Rails.application.routes.draw do

devise_for :users
root to: "homes#top"

get "/home/about" => "homes#about", as: "about"

resources :users, only: [:top, :index, :show, :edit, :update]

resources :books, only: [:index, :show]


end
