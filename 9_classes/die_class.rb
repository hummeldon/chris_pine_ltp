class Die

  def initialize
    roll
  end

  def cheat(num)
    if num > 0 && num < 7
      @numberShowing = num
    else
      roll
    end
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

end

puts Die.new.cheat(1)
