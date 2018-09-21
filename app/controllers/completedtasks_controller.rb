class CompletedtasksController < ApplicationController
before_action :authenticate_user!, only:[:destroy, :show, :create, :index, :delete]
  def index
    @completedtasks = Completedtask.all
    @users = User.all
  end

 def show
   @user = User.find(params[:id])
 end

  def create
    @todo = Todo.find(params[:todo_id])
      @completedtask = Completedtask.new(todo: @todo, user: current_user)
    @completedtask.save
    redirect_to todos_path, notice: ' tarea  completada'
  end

  def destroy
    @todo = Todo.find(params[:todo_id])
    @completedtask = Completedtask.new(todo: @todo, user: current_user)
    @completedtask.delete
    redirect_to root_path, notice: 'Ok, descompletada!'
  end
end
