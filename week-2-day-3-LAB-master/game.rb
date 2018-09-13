class Game

  attr_reader :guessed_letters
def initialize(player, hidden_word)
@player = player
@hidden_word = hidden_word
@guessed_letters = []

end

def pass_letter(letter)
  return @hidden_word.display_word(letter)
end

def store_guessed_letters(letter)
  @guessed_letters.push(letter)
end

def outcome_of_pass_letter(letter)
  if @hidden_word.guessed_outcome(letter) == false
    @player.lose_a_life
  end
end
def check_game_status
  if pass_letter(letter) == @hidden_word && @player.lives > 0
    return "game won"
  elsif @player.lives < 1
    return "game lost"
  end
  return "continue playing"
end

def take_guess(letter)
  store_guessed_letters(letter)
  outcome_of_pass_letter(letter)
  pass_letter(letter)
end
end
