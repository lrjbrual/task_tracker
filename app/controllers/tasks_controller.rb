class TasksController < ApplicationController
  before_action :find_task_params, except: [:index, :new, :create]

  def index
    @task = Task.all
  end

  def show
  
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
    if @task.update(task_params)
      redirect_to @task
    else
      render 'edit'
    end
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end
  
  private
    def task_params
      params.require(:task).permit(:title, :detail)
    end
    
    def find_task_params
      @task = Task.find(params[:id])
    end

end
