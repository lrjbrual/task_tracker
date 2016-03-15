class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def edit

  end

  def create
    @tasks = Task.new(task_params)

    if @tasks.save
      redirect_to @tasks
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
