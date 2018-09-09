Rails.application.routes.draw do
  resources :todos, only: :index do
    resources :completedtasks,  only: :create
  end

   resources :completedtasks, only: :index

   delete  '/todos/:todo_id/completedtasks', to: 'completedtask#destroy', as: 'destroy_completedtask'


  root to: 'todos#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
