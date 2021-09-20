Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index'
  resources :users, only: %i(index)
  resources :books, only: %i(index new create)
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
