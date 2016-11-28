Rails.application.routes.draw do
    
  get 'calendar/show'
  resource :calendar, only: [:show], controller: :calendar
  #root to: "calendar#show"

  resources :groups
  resources :events
  resources :calendar_events
  resources :users  
    
  get 'onboarding/new'

  get 'sessions/new'
    
  get 'welcome/homepage'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'signup' => 'users#new'
  resources :users
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
    
  root 'onboarding#new'
    
end
