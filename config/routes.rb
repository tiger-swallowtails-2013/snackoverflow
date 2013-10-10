Snackoverflow::Application.routes.draw do
  root 'users#index'

  get 'login', to: 'sessions#new', as: 'login'

  resources :users, only: [:show,:create, :delete]

  get 'auth/facebook/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
end
