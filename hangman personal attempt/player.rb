class Player
attr_reader :lives

  def initialize(name)
    @name = name
    @lives = 6
  end

  def lose_life
    @lives -= 1
  end
  
end
