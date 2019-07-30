class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def add
    @task = Task.new
  end

  def create
    @task = Task.new(params)
    @task.save

    redirect_to tasks_show_path(@task.id)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params)

    redirect_to tasks_show_path(@task.id)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_index_path
  end

  private

  def task_params
    return params.require(:task).permit(:title, :details, :completed)
  end
end
