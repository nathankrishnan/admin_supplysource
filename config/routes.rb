AdminSupplysource::Application.routes.draw do
  
  resources :users
  resources :sessions
  resources :meats

  # set a root path
  root "static_pages#home"

  # match requests to controller actions
  match '/sign_up', to: 'users#new',  via: 'get'
  match '/login', to: 'sessions#new', via: 'get'
  match '/logout', to: 'sessions#destroy', via: 'get'

  match '/renderjson/:id', to: 'meats#renderJson', via: 'get'

end
