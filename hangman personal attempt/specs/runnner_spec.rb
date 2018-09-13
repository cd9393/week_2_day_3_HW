require("minitest/autorun")
require("minitest/rg")
require_relative("../game")
require_relative("../hiddenword")
require_relative("../player")
require_relative("../runner")

class RunnerTest < Minitest::Test
def setup
  @person = Person.new(name)
  @hiddenword = HiddenWord.new(word)
  @game = Game.new(@person, @hiddenword)

end

def test_start_game
end

def test_take_turn
end

def test_game_won?
end

def test_end_game
end
end
