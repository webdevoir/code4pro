class TaskController < ApplicationController
  def show
    project = Project.find(params[:project_id])
    @tasks = project.tasks
    @task = @tasks.friendly.find(params[:id])
  end
end
