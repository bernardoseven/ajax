class FinishesController < ApplicationController
  before_action :setup_task, only: [:create, :destroy]
  
  def create
    @task.active_task
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end
  
  def destroy
    @task.inactive_task
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end
  
  private
  def setup_task
    @task = Task.find_by(params[:id])
  end
  
end
