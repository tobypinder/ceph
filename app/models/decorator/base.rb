module Decorator
  class Base
    attr_accessor :payload
    attr_accessor :event

    def initialize(event, payload)
      self.payload = payload
      self.event   = event
    end

    def to_json
      json = { data: payload }
      json[:debug] = { event: event } if Jets.env.development?

      json
    end
  end
end
