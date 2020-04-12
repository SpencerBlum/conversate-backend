Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    # resource :users #, only: [:index, :show, :create, :update, :destroy]
  
   get '/users' => 'users#index'

   post "/users" => "users#create"
  # get '/users/:id' => 'users#show'

  get '/user/:id/messages' => 'messages#index'



end
