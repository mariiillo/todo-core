# frozen_string_literal: true

require 'ostruct'

module Todo
  module Core
    module Interactors
      class CreateTask
        def call(name:)
          Result.new({ name: name, created_at: Time.now })
        end
      end

      Result = Struct.new(:payload) do
        def success?
          true
        end
      end
    end
  end
end
