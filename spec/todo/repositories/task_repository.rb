# frozen_string_literal: true

RSpec.describe Todo::Core::Repositories::TaskRepository do
  describe '#save' do
    it 'stores the passed task' do
    end
  end

  describe '#find' do
    it 'returns the task for a given id' do
    end

    it 'returns nil when no task is found'
  end

  describe '#delete' do
    it 'deletes the task for a given id' do
    end

    it 'returns an error when no task for that id was found' do
    end
  end
end
