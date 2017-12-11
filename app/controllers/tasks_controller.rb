class TasksController < ApplicationController
  before_action :setup_task, only: [:show, :edit, :update, :destroy]
  
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end
  
  def create
    @task = Task.create(task_params)
    if @task.save
      redirect_to root_path
    else
      render new_task_path
    end
  end

  def edit
  end
  
  def update
    if @task.update_attributes(task_params)
      render :index
    else
      render :edit
    end
  end
  
  def destroy
    @task.destroy
  end
  
  private
  def setup_task
    @task = Task.find(params[:id])
  end
  
  def task_params
    params.require(:task).permit(:task, :duration)
  end
end
