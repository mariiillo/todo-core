# frozen_string_literal: true

module Todo
  module Core
    module Entities
      class Task
        attr_reader :name

        def initialize(name:)
          @name = name
        end

        def completed?
          false
        end
      end
    end
  end
end
