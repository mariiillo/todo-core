# frozen_string_literal: true

module Todo
  module Core
    module Interactors
      class CreateTask
        def call(name:)
          if name.nil?
            Result.new(nil, 'Invalid name')
          else
            Result.new({ name: name, created_at: Time.now })
          end
        end
      end

      Result = Struct.new(:payload, :error_message) do
        def success?
          error_message.nil? ? true : false
        end

        def failure?
          !success?
        end
      end
    end
  end
end
