Rails.application.routes.draw do
  get 'ranking/index'
  resources :todos, only: :index do
    resources :completedtasks,  only: :create
  end

   resources :completedtasks, only: :index

   delete 'todo/:todo_id/completedtask', to: 'completedtasks#destroy', as: 'destroy_completedtask'



  root to: 'todos#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
