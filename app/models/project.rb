class Project < ::BaseDocument
  include Dynamoid::Document

  table name: :project, capacity_mode: :on_demand

  range :identifier, :string

  field :name, :string
end
