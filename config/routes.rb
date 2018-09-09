Rails.application.routes.draw do
  get 'ranking/index'
  resources :todos, only: :index do
    resources :completedtasks,  only: :create
  end

   resources :completedtasks, only: :index

   delete 'remove_todo/:todo_id', to: 'completedtasks#remove_todo', as: 'remove_todo'



  root to: 'todos#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
