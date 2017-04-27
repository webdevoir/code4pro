class TaskController < ApplicationController
  before_action :authenticate_user!
  def show
    project = Project.find(params[:project_id])
    @tasks = project.tasks.order(:tag)

    joined = false

    if !current_user.nil? && !current_user.projects.nil?
      joined = current_user.projects.include?(project)
    end

    if joined
      
    @task = @tasks.friendly.find(params[:id])

    @next_task = @task.next
    @prev_task = @task.prev

    else
      flash[:notice] = "No permission to this!"
      redirect_to project
    end 
  end
end
