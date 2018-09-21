class TodosController < ApplicationController
  def index
    @todos = current_user.todos
  end

  def show
    @todo = Todo.find(params[:id])
  end
end
