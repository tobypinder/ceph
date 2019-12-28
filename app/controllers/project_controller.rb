class ProjectController < ApplicationController
  def index
    projects = Project.record_limit(30).all

    # TODO: Extract the debug stuff as middleware
    # TODO: Decorator pattern: #decorate_for_index / #decorate_for_show
    json = { data: { projects: projects } }
    json[:debug] = { event: event } if Jets.env.development?
    render json: json
  end

  def show
    id      = params[:id]
    project = Project.where(id: id).first

    json = { data: { project: project } }
    json[:debug] = { event: event } if Jets.env.development?
    render json: json
  end
end
