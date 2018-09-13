class Game
attr_reader :guessed_letter, :player

  def initialize(player, word)
    @player = player
    @word = word
    @guessed_letter = []
  end

  def store_guess(guess)
    @guessed_letter << guess
  end

  def guess(letter)
    if @word.match(letter) == true
      guess_index = @word.wordarray.index(letter)
      @word.stararray[guess_index] = letter
    end
    @player.lose_life
    return @word.display
  end

  def status
    if @player.lives < 1
      return "GAME OVER"
    elsif @player.lives > 0 && @word.display == @word.word
      return "Winner"
    end
    return "continue playing"
  end 

end
