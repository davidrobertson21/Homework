class RockPaperScissors

  def initialize()
    @rock = "rock"
    @paper = "paper"
    @scissors = "scissors"
  end

  def game(option1, option2)
    if option1 == @rock && option2 == @scissors
     return "Rock wins"
    elsif option1 == @rock && option2 == @paper
      return "Paper wins"
    elsif option1 == @paper && option2 == @scissors
      return "Scissors wins"
    elsif option1 == @scissors && option2 == @rock
     return "Rock wins"
    elsif option1 == @paper && option2 == @rock
      return "Paper wins"
    elsif option1 == @scissors && option2 == @paper
      return "Scissors wins"
    else
      return "Draw"
    end
  end
      


# def rock_wins
#   @rock > @scissors
#   if @rock
#     return "rock wins"
#     else "rock loses"
#   end
# end

# def rock_loses
#   @rock < @paper
#   if @paper
#     return "rock loses"
#     else "rock wins"
#   end
# end

# def rock_draw
#   @rock == @rock
#   if @rock
#     return "draw"
#   end
# end

# def paper_wins
#   @paper > @rock
#   if @paper
#     return "paper wins"
#     else "paper loses"
#   end
# end

# def paper_loses
#   @paper < @scissors
#   if @scissors
#     return "paper loses"
#     else "paper wins"
#   end
# end

# def paper_draw
#   @paper == @paper
#   if @paper
#     return "draw"
#   end
# end

# def scissors_wins
#   @scissors > @paper
#   if @scissors
#     return "scissors wins"
#     else "scissors loses"
#   end
# end

# def scissors_loses
#   @scissors > @paper
#   if @paper
#     return "scissors loses"
#     else "scissors wins"
#   end
# end

# def scissors_draw
#   @scissors == @scissors
#   if @scissors
#     return "draw"
#   end
# end

end