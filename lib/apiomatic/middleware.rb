# frozen_string_literal: true

module Apiomatic
  class Middleware
    def call(env)
      [204, {}, []]
    end
  end
end
