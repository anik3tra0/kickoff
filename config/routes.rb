Rails.application.routes.draw do
  
  resources :profiles, except: [:new, :create]
  devise_for :users

  get '/home' => 'welcome#home'

end