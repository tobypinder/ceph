Jets.application.configure do
  config.dynamoid = ActiveSupport::OrderedOptions.new
  # config.dynamoid.url = 'http://dynamodb:8000'
  config.dynamoid.url = 'http://172.18.0.1:8000'
  config.dynamoid.namespace = "ceph"
  # Example:
  # config.function.memory_size = 1536

  # config.action_mailer.raise_delivery_errors = false
  # Docs: http://rubyonjets.com/docs/email-sending/
  config.logger = Logger.new(STDOUT)
end
