Macropolo::Application.routes.draw do

  root :to => "home#index"

  ActiveAdmin.routes(self)

  #authenticated :user do
  #  root :to => 'home#index'
  #end


  devise_for :users


  resources :users

end