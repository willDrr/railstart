Rails.application.routes.draw do
  devise_for :users, controllers: {
    # TODO:: namespace this path
    session: 'sessions',
  }
  resources :users

  root to: 'home#index'
end
