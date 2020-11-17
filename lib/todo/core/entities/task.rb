# frozen_string_literal: true

module Todo
  module Core
    module Entities
      class Task
        attr_reader :name, :created_at

        def initialize(name:)
          @name = name
          @created_at = Time.now
        end

        def completed?
          false
        end
      end
    end
  end
end
