class CompletedtasksController < ApplicationController
before_action :authenticate_user!, only: [:create, :destroy, :remove_todo]
  def index
    @completedtasks = Completedtask.all
  end


  def create
    @todo = Todo.find(params[:todo_id])
    @completedtask = Completedtask.new(todo: @todo, user: current_user)
    @completedtask.save
      redirect_to todos_path, notice: ' tarea  completada'
  end

  def remove_todo
  @todo = Todo.find(params[:todo_id])
  @todo.completedtasks.destroy
  redirect_to completedtasks_path
  end
end
