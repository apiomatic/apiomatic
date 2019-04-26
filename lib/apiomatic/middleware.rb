# frozen_string_literal: true

require 'apiomatic/http_verbs'
require 'apiomatic/middleware_config'

module Apiomatic
  class << self
    def middleware
      config = MiddlewareConfig.new
      yield config
      Middleware.new(config)
    end
  end

  class Middleware
    def initialize(config)
      @config = config
    end

    def call(env)
      [204, {}, [env.inspect]]
    end
  end
end
