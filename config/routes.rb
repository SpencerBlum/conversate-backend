Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    # resource :users #, only: [:index, :show, :create, :update, :destroy]
  
   get '/allusers/:id' => 'users#index'

   post "/users" => "users#create"
  get '/users/:id' => 'users#show'

  get "/conversations/:id" => "conversations#show"
  post '/conversations/new' => 'conversations#create'

  post '/users/login' => 'users#login'
  post '/users/:id/newcontact' => 'users#newcontact'
  delete '/users/:id/newcontact/:user_contact_id' => 'users#deletecontact'
  get '/users/noconvo/:id' => "users#usernoconvo"

  post '/conversations/newmessage' => 'messages#create'

  # get '/users/:id/messages' => 'messages#index'
  
end
