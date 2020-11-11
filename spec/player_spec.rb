require 'Player'

describe Player do
  subject(:alex) { described_class.new('Alex') }
  subject(:chris) { described_class.new('Chris') }
  it 'returns the name given' do
    expect(chris.name).to eq('Chris')
  end
  it 'does 10 damage' do
    expect { chris.attack(b) }.to change { a.health }.by(-10)
  end
end
