Rails.application.routes.draw do
  resources :comensales
  resources :turnos
  resources :boos
  resources :reloj
  resources :servicio
  devise_for :users
  devise_for :models
  post 'reloj' => 'reloj#action'
  #root to: 'sign_up#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
    root :to => 'servicio#new'
  end
end
