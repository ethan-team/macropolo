Macropolo::Application.routes.draw do

  #resources :offers  - do not want to expose the entire offer REST for now
  get '/offers/:id(.:format)', :to => "offers#show", :as => :offer

  #welcome to our home
  root :to => "home#index"

  # this is our search result... keep it here (do not move to offers controller as we may implement offers REST)
  post "/search", :to => "home#search"

  ActiveAdmin.routes(self)

  #authenticated :user do
  #  root :to => 'home#index'
  #end


  devise_for :users


  resources :users

end