class TasksController < ApplicationController

  def index
    @task = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit

  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to @task
    else
      render 'new'
    end
  end

  def update

  end

  def destroy

  end
  
  private
    def task_params
      params.require(:task).permit(:title, :detail)
    end

end
