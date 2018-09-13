require ("minitest/autorun")
require('minitest/rg')
require_relative('../player')

class PlayerTest < Minitest::Test

def setup
  @player = Player.new("Craig")
end
def test_player_name
  assert_equal("Craig", @player.name)
end
def test_lose_a_life
  @player.lose_a_life
  assert_equal(5, @player.lives)
end
end
