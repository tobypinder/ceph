Jets.application.configure do
  config.dynamoid = ActiveSupport::OrderedOptions.new
  config.dynamoid.url = 'https://dynamodb.eu-west-2.amazonaws.com'
  config.dynamoid.namespace = "ceph"
  # Example:
  # config.function.memory_size = 2048

  # Ignore bad email addresses and do not raise email delivery errors.
  # Set this to true and configure the email server for immediate delivery to raise delivery errors.
  # Docs: http://rubyonjets.com/docs/email-sending/
  # config.action_mailer.raise_delivery_errors = false
end
