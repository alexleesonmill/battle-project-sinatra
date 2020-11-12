require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:alex) { double :alex }
  let(:chris) { double :chris }
  it 'deals damage to a player' do
    expect(chris).to receive(:deal_damage)
    game.attack(chris)
  end

  #   it 'does 10 damage' do
  #     expect { alex.attack(chris) }.to change { chris.health }.by(-10)
  #   end
end
