require 'Player'

describe Player do
  subject(:alex) { described_class.new('Alex') }
  subject(:chris) { described_class.new('Chris') }
  it 'returns the name given' do
    expect(alex.name).to eq('Alex')
  end

end
