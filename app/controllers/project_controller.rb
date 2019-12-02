class ProjectController < ApplicationController
  def index
    projects = Project.record_limit(30).all

    render json: { data: { projects: projects }, debug: { event: event } }
  end

  def show
    id      = params[:id]
    project = Project.find(id)

    render json: { data: { project: project }, debug: { event: event } }
  end
end
