class HiddenWord
attr_reader :word, :wordarray, :stararray

  def initialize(word)
    @word = word
    @wordarray = word.each_char.to_a
    @stararray = Array.new(@wordarray.length, "*")
  end

  def display
    return @stararray.join
  end

  def match(letter)
    return @wordarray.include? letter
  end



end
