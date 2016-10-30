Rails.application.routes.draw do
    
  resources :groups
    
  get 'onboarding/new'

  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'signup' => 'users#new'
  resources :users
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
    
  root 'onboarding#new'
    
end
