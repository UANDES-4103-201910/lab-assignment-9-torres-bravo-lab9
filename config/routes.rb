Rails.application.routes.draw do
  get 'callback/omniauthAuth'
  get 'mainpage/home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :sessions

  root :to => 'mainpage#home'

  post '/login',   to: 'sessions#create', as: :log_in
  delete '/log_out' => 'sessions#destroy', as: :log_out

  get '/sign_in' => 'registrations#new', as: :registrations
post '/sign_in' => 'registrations#create', as: :sign_in

end
