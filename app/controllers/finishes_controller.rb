class FinishesController < ApplicationController
  before_action :setup_task, only: [:create, :destroy]
  
  def create
    @task.build_finish(finish_params)
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end
  
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_path }
      format.js
    end
  end
  
  private
  def setup_task
    @task = Task.find_by(params[:id])
  end
  
  def finish_params
    params.require(:finish).permit(:active, :task_id)
  end
  
end
