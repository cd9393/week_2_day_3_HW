require("minitest/autorun")
require("minitest/rg")
require_relative("../game")
require_relative("../hiddenword")
require_relative("../player")

class GameTest < Minitest::Test

  def setup
    @player = Player.new("Craig")
    @hiddenword = HiddenWord.new("ghost")
    @game = Game.new(@player, @hiddenword)
  end

  def test_guess_true
    @game.guess("g")
    assert_equal("g***t",@game.guess("t") )
  end

  def test_guess_false
    @game.guess("z")
    assert_equal("*****",@game.guess("z") )
  end
  def test_store_guesses
    @game.store_guess("Z")
    assert_equal(1,@game.guessed_letter.length)

  end

  def test_lost_life_wrong_guess
    @game.guess("z")
    assert_equal(5, @game.player.lives)
  end

  def test_game_status__win
    @game.guess("g")
    @game.guess("h")
    @game.guess("o")
    @game.guess("s")
    @game.guess("t")
    assert_equal("Winner", @game.status)
  end

  def test_game_status__lost
    @game.guess("z")
    @game.guess("z")
    @game.guess("z")
    @game.guess("z")
    @game.guess("z")
    @game.guess("z")
    assert_equal("GAME OVER", @game.status)
  end

  def test_game_status__continue_playing
    @game.guess("z")
    @game.guess("z")
    @game.guess("z")
    assert_equal("continue playing", @game.status)
  end


end
