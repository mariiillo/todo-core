# frozen_string_literal: true

RSpec.describe Todo::Core::Repositories::File::TaskRepository do
  describe '#save' do
    it 'stores the passed task'
  end

  describe '#all' do
    it 'returs all the stored tasks'
  end

  describe '#find' do
    it 'returns the task for a given id'
    it 'returns nil when no task is found'
  end

  describe '#delete' do
    it 'deletes the task for a given id'
    it 'returns an error when no task for that id was found'
  end
end
