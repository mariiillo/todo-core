# frozen_string_literal: true

require 'todo/core/version'
require 'todo/core/entities/task'
require 'todo/core/interactors/create_task'
require 'todo/core/repositories/task_repository'

module Todo
  module Core
    class Error < StandardError; end
    # Your code goes here...
  end
end
