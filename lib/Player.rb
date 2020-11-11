class Player
  HEALTH = 100
  attr_reader :name, :health
  def initialize(name, health = HEALTH)
    @name = name
    @health = health
  end

  def attack(player)
    player.deal_damage
  end

  def deal_damage
    @health -= 10
  end
end
