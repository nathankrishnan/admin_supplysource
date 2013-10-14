AdminSupplysource::Application.routes.draw do
  
  resources :users
  resources :sessions

  # set a root path
  root "users#new"

  # match requests to controller actions
  match '/sign_up', to: 'users#new',  via: 'get'
  match '/login', to: 'sessions#new', via: 'get'
  match '/logout', to: 'sessions#destroy', via: 'get'



end
