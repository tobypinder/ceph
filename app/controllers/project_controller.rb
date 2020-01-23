class ProjectController < ApplicationController
  def index
    projects = Project.record_limit(30).all
    payload  = { projects: projects }

    render json: Decorator::Base.new(event, payload).to_json
  end

  def show
    id      = params[:id]
    project = Project.where(id: id).first
    payload = { project: project }

    render json: Decorator::Base.new(event, payload).to_json
  end
end
