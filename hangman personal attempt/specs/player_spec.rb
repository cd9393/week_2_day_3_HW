require("minitest/autorun")
require("minitest/rg")
require_relative("../player")

class PlayerTest < Minitest::Test

  def setup
    @player = Player.new("Craig")
  end


def test_get_lives
  assert_equal(6, @player.lives)
end

def test_lose_life
  @player.lose_life
  assert_equal(5, @player.lives)
end
end
