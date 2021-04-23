Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :list, only: [:new, :create, :edit, :update, :destroy] do
    resources :card, only: [:new, :snow,:create, :edit, :update, :destroy]
  end

end
