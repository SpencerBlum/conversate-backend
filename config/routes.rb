Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    # resource :users #, only: [:index, :show, :create, :update, :destroy]
  
   get '/users' => 'users#index'

   post "/users" => "users#create"
  # get '/users/:id' => 'users#show'

  get "/conversations/:id" => "conversations#show"

  post '/users/login' => 'users#login'
  post '/users/:id/newcontact' => 'users#newcontact'
  delete '/users/:id/newcontact/:user_contact_id' => 'users#deletecontact'
  
  
  # get '/users/:id/messages' => 'messages#index'
  
end
