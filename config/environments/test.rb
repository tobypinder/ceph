Jets.application.configure do
  config.dynamoid = ActiveSupport::OrderedOptions.new
  config.dynamoid.url = 'http://localhost:8000'
  config.dynamoid.namespace = "ceph"
  # Tell Action Mailer not to deliver emails to the real world.
  # The :test delivery method accumulates sent emails in the
  # ActionMailer::Base.deliveries array.
  # Docs: http://rubyonjets.com/docs/email-sending/
  config.action_mailer.delivery_method = :test
end
