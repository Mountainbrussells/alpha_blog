Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#welcome'
  get 'about' => 'pages#about'

  resources :articles
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
