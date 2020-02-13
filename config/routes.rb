Rails.application.routes.draw do
  get 'doses/index'
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:index, :new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
