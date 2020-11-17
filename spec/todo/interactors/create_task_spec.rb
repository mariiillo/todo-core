# frozen_string_literal: true

RSpec.describe Todo::Core::Interactors::CreateTask do
  context 'with valid attributes' do
    it 'returns a sucessfull output' do
      interactor = described_class.new
      output = interactor.call(name: 'Finish this gem')

      expect(output).to be_success
    end

    it 'returns the representation of a task' do
      interactor = described_class.new
      output = interactor.call(name: 'Finish this gem')

      expect(output.payload[:name]).to eq 'Finish this gem'
      expect(output.payload[:created_at]).to be_an_instance_of(Time)
    end
  end

  context 'with invalid attributes' do
    it 'returns a failed output' do
      interactor = described_class.new
      output = interactor.call(name: nil)

      expect(output).to be_failure
    end

    it 'returns an error message' do
      interactor = described_class.new
      output = interactor.call(name: nil)

      expect(output.payload[:error_message]).to eq 'Invalid name'
    end
  end
end
