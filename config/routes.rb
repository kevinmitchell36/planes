Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      get '/planes' => 'planes#index'
      get '/planes/:id' => 'planes#show'
      post '/planes' => 'planes#create'
      patch '/planes/:id' => 'planes#update'
      delete '/planes/:id' => 'planes#destroy'
    end

    namespace :v2 do 
      get '/planes' => 'planes#index'
      get '/planes/:id' => 'planes#show'
      post '/planes' => 'planes#create'
      patch '/planes/:id' => 'planes#update'
      delete '/planes/:id' => 'planes#destroy'
    end
  end
end
