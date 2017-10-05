class TodosController < ApplicationController
    def index
    @todos = current_user.todos
  end

  def show
    @todo = current_user.todos.find(params[:id])

  end

  def new
    @todo = current_user.todos.new
  end

  def create

    new_todo = current_user.todos.create(todo_params)
    new_todo.save

    redirect_to new_todo

  end

  def edit
    @todo = current_user.todos.find(params[:id])
  end

  def update

    todo = current_user.todos.find(params[:id])
    todo.update(todo_params)

    redirect_to todo
  end

  def destroy
    current_user.todos.destroy(params[:id])
    redirect_to todos_url
  end

  protected
  def todo_params
    params.require(:todo).permit(:title, :item)
  end
end
