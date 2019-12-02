class SeedJob < ApplicationJob
  # rate "10 hours" # every 10 hours
  def all
    puts "Seeding"
  end
end
