Jets.application.configure do
  config.dynamoid = ActiveSupport::OrderedOptions.new
  config.dynamoid.url = 'http://localhost:8000'
  config.dynamoid.namespace = "ceph"
  # Example:
  # config.function.memory_size = 1536

  # config.action_mailer.raise_delivery_errors = false
  # Docs: http://rubyonjets.com/docs/email-sending/
end
