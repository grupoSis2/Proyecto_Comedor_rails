Rails.application.routes.draw do
  resources :turnos
  resources :boos
  resources :reloj
  devise_for :users
  devise_for :models
  #root to: 'sign_up#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    root :to => 'turnos#index'
  end
end
