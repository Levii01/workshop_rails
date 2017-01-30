Rails.application.routes.draw do
  devise_for :users
  resources :students do
    get :subjects
  end

  get 'report/subjects'
  resources :teachers

  root to: 'students#index'
end
