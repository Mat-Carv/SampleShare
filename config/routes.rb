Rails.application.routes.draw do
  devise_for :users
  root 'landing#index'
  get '/my_packs', to: 'pack#index'
  get '/account', to: 'account#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
