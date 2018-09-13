require("minitest/autorun")
require("minitest/rg")
require_relative("../hiddenword")

class HiddenWordTest < Minitest::Test

  def setup
    @hidden_word = HiddenWord.new("ghost")
  end

  def test_get_word
    assert_equal("ghost", @hidden_word.word)
  end

  def test_get_wordarray
    assert_equal(["g","h","o","s","t"], @hidden_word.wordarray)
  end

  def test_display
    assert_equal(["*","*","*","*","*"], @hidden_word.display)
  end

  def test_guess_true
    assert_equal(true, @hidden_word.match("g"))
  end

  def test_match_false
    assert_equal(false, @hidden_word.match("z"))
  end


end
