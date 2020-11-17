# frozen_string_literal: true

RSpec.describe Todo::Core::Interactors::CreateTask do
  it 'creates a task' do
    interactor = described_class.new
    output = interactor.call(name: 'Finish this gem')

    expect(output).to be_success
    expect(output.payload[:name]).to eq 'Finish this gem'
    expect(output.payload[:created_at]).to be_an_instance_of(Time)
  end
end
