Rails.application.routes.draw do
  
  get '/planes' => 'planes#index'
  get '/planes/:id' => 'planes#show'
  post '/planes' => 'planes#create'
  patch '/planes/:id' => 'planes#update'
  delete '/planes/:id' => 'planes#destroy'
end
