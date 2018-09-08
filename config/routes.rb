Rails.application.routes.draw do
  get 'completedtasks/create'
  resources :todos, only: :index do
    resources :completedtasks, only: :create
  end

   resources :completedtasks, only: :index

  root to: 'todos#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
