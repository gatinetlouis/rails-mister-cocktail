Rails.application.routes.draw do
  root to: "cocktails#index"
  # get 'doses/index'
  resources :cocktails, only: [:index, :new, :create, :show, :destroy, :edit, :update] do
    resources :doses, only: [:index, :new, :create]
  end
  resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
