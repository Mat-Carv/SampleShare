Rails.application.routes.draw do
  devise_for :users
  resources :packs

  root 'landing#index'

  get '/new_pack', to: 'packs#new'
  post '/new_pack', to: 'packs#create'
  get '/my_packs', to: 'packs#index'

  get '/account', to: 'account#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
