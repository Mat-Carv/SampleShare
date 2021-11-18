Rails.application.routes.draw do
  devise_for :users
  resources :packs

  root 'landing#index'

  get '/new_pack', to: 'packs#new'
  post '/new_pack', to: 'packs#create'
  get '/my_packs', to: 'packs#index'
  get '/packs/:id', to: 'packs#show'
  get '/packs/:id/edit', to: 'packs#edit'
  post '/packs/:id/edit', to: 'packs#update'
  delete '/packs/:id', to: 'packs#delete', as: 'delete_pack'

  get '/catalogue', to: 'catalogues#index'

  get '/account', to: 'account#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
