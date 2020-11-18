# frozen_string_literal: true

module Todo
  module Core
    module Interactors
      class CreateTask
        def initialize(repository: Todo::Core::Repositories::TaskRepository.new)
          @repository = repository
        end

        def call(name:)
          if name.nil?
            Result.new({ error_message: 'Invalid name' })
          else
            task = Todo::Core::Entities::Task.new(name: name)
            repository.save(task)
            Result.new({ name: name, created_at: Time.now })
          end
        end

        private

        attr_reader :repository
      end

      Result = Struct.new(:payload) do
        def success?
          payload[:error_message].nil? ? true : false
        end

        def failure?
          !success?
        end
      end
    end
  end
end
