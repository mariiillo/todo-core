# frozen_string_literal: true

RSpec.describe Todo::Core::Entities::Task do
  it 'stores a name' do
    subject = described_class.new(name: 'Finish this gem')

    expect(subject.name).to eq 'Finish this gem'
  end

  it 'stores a created_at' do
    subject = described_class.new(name: 'Finish this gem')

    expect(subject.created_at).to be_an_instance_of(Time)
  end

  it 'is not completed by default' do
    subject = described_class.new(name: 'Finish this gem')

    expect(subject).not_to be_completed
  end
end
