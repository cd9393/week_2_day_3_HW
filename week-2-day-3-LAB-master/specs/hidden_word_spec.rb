require ("minitest/autorun")
require('minitest/rg')
require_relative('../hidden_word')

class HiddenWordTest < Minitest::Test

def setup
@hidden_word = HiddenWord.new("batman")

end

def test_get_word
  assert_equal("batman", @hidden_word.word)
end

def test_guessed_outcoome__correct
  assert_equal(true, @hidden_word.guessed_outcome("b"))
end

def test_guessed_outcoome__false
  assert_equal(false, @hidden_word.guessed_outcome("z"))
end

def test_display_word_guess__correct

  assert_equal("b*****", @hidden_word.display_word("b"))
end
def test_display_word_guess__incorrect
assert_equal("******", @hidden_word.display_word("c"))
end
end
