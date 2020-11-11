require 'Player'

describe Player do
  subject(:alex) { described_class.new('Alex') }

  it 'returns a name' do
    expect(alex.name).to eq 'Alex'
  end
end
