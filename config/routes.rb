Rails.application.routes.draw do
  get 'home/index'

  get 'signup', to: 'usuarios#new', as: 'signup'
  get 'login', to: 'login#new', as: 'login'
  get 'logout', to: 'login#destroy', as: 'logout'

  resources :login
  resources :usuarios do
    resources :alunos
  end

  root 'home#index'
end
