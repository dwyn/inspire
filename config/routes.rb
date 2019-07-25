Rails.application.routes.draw do
  root 'welcome#home'

  resources :projects do
    member { post :favorite }
  end
  resources :sections
  resources :users

  root 'welcome#home'
  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  get '/logout' => "sessions#destroy"
end
