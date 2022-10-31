Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/customers', to: 'customers#index'
  get '/customers/:id', to: 'customers#show'

  get '/items', to: 'items#index'

  get '/supermarkets', to: 'supermarkets#index'
  get '/supermarkets/:id', to: 'supermarkets#show'
end
