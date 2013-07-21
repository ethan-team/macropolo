Macropolo::Application.routes.draw do

  resources :offers

  root :to => "home#index"
  get "/search", :to => "home#search" 

  ActiveAdmin.routes(self)

  #authenticated :user do
  #  root :to => 'home#index'
  #end


  devise_for :users


  resources :users

end