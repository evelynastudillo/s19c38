Rails.application.routes.draw do
  get 'ranking/index'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  resources :todos, only: :index do
    resources :completedtasks,  only: [:create, :destroy]
  end

  resources :completedtasks, only: :index


   delete 'todos/:todo_id/completedtasks/:completedtask_id', to: 'completedtasks#delete', as: 'delete_completedtak'



  root to: 'todos#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
