class CompletedtasksController < ApplicationController
  before_action :authenticate_user!

  def create
    @todo = Todo.find(params[:todo_id])
    @completedtask = Completedtask.new(todo: @todo, user: current_user)
    if @completedtask.save
      redirect_to todos_path, notice: ' tarea  completada'
    else
      redirect_to todos_path, alert: 'tarea DEScompletada'
    end
  end

def index
  @completedtasks = Completedtask.all
end


end
