module Scrape
  class WarframeJob < ::ApplicationJob
    # Call from jets console:
    # Scrape::WarframeJob.perform_now(:create_all)

    # rate "10 hours" # every 10 hours
    def create_all
      Scrape::Warframe.new.create_all
    end

    def destroy_all
      Scrape::Warframe.new.destroy_all
    end
  end
end
