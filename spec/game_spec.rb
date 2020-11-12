require 'game'

describe Game do
  subject(:game) { described_class.new(alex, chris) }
  let(:alex) { double :alex }
  let(:chris) { double :chris }
  it 'deals damage to a player' do
    expect(chris).to receive(:deal_damage)
    game.attack(chris)
  end

  it 'gets player 1' do
    expect(game.player_1).to eq alex
  end

  it 'gets player 2' do
    expect(game.player_2).to eq chris
  end

  it 'starts as player 1' do
    expect(game.current_turn).to eq alex
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq chris
    end
  end

  #   it 'does 10 damage' do
  #     expect { alex.attack(chris) }.to change { chris.health }.by(-10)
  #   end
end
