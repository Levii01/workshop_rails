Rails.application.routes.draw do
  resources :payments
  devise_for :users
  resources :students do
    get :subjects
  end

  get 'report/subjects', to: 'reports#subjects'

  resources :teachers do
    get :subjects
  end

  root to: 'visitors#index'
end
