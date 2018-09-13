require ("minitest/autorun")
require('minitest/rg')
require_relative('../game')
require_relative('../hidden_word')
require_relative('../player')

class GameTest < Minitest::Test

def setup

@player = Player.new("Craig")
@hidden_word = HiddenWord.new("batman")
@game = Game.new(@player, @hidden_word)



end

def test_pass_letter

  result = @game.pass_letter("b")
  assert_equal("b*****", result)
end

def test_store_guessed_letters
  @game.store_guessed_letters("b")
  result = @game.guessed_letters.length
  assert_equal(1, result)
end

def test_subtract_life
  @game.outcome_of_pass_letter("z")
  assert_equal(5, @player.lives)
end


def test_take_guess
  @game.take_guess("t")
  assert_equal(1, @game.guessed_letters.length)
  assert_equal(6, @player.lives)
  assert_equal("**t***", @game.take_guess("t"))
end
def test_game_won
  @game.take_guess("b")
  @game.take_guess("a")
  @game.take_guess("t")
  @game.take_guess("m")
  @game.take_guess("n")
  assert_equal("game won", @game.check_game_status(letter))

end

end
