class TasksController < ApplicationController

  def new

  end

  def create
    @task = Task.new(params[:task])

    @task.save
    redirect_to @task
  end

end
