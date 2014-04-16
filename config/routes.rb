TwitterClone::Application.routes.draw do
  resources :users
  devise_for :users #, path_names: {sign_in: "login", sign_out: "logout", sign_up: "signup"}
  root to: 'users#index'
end
