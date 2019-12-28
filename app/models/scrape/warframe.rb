module Scrape
  class Warframe
    def initialize

    end

    def create_all
      project = Project.create(identifier: 'warframe', name: 'Warframe')
    end

    def destroy_all
      project = Project.where(identifier: 'warframe')
      project.delete_all
    end
  end
end
