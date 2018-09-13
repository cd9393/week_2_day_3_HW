class HiddenWord
attr_reader :word
def initialize(word)
  @word = word
end


def guessed_outcome(guessed_letter)
  return @word.include?(guessed_letter)

end

def display_word(guessed_letter)
  word_array = @word.each_char.to_a
  for letter in word_array
    if letter != guessed_letter
      letter.replace("*")
    end
end
  return word_array.join
end

end
