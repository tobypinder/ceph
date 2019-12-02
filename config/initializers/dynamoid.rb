require 'dynamoid'
Dynamoid.configure do |config|
  config.namespace     = Jets.application.config.dynamoid.namespace
  config.endpoint      = Jets.application.config.dynamoid.url
  config.region        = ENV['REGION']
  config.access_key    = ENV['ACCESS_KEY']
  config.secret_key    = ENV['SECRET_KEY']

  config.capacity_mode = :on_demand
end

Dynamoid.included_models.each { |m| m.create_table(sync: true) }
