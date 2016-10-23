Rails.application.routes.draw do
    
    resources :groups
    
    root 'welcome#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
