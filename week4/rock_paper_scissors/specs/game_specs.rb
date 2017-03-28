require 'minitest/autorun'
require_relative '../models/game'

class TestRockPaperScissors < Minitest::Test


  def setup
    @rockpaperscissors = RockPaperScissors.new()
  end


  def test_game
    assert_equal("Rock wins", @rockpaperscissors.game("rock", "scissors"))
  end


  # def test_rock_wins
  #   assert_equal("rock wins", @rockpaperscissors.rock_wins())
  # end


  # def test_paper_wins
  #   assert_equal("paper wins", @rockpaperscissors.paper_wins())
  # end


  # def test_scissors_wins
  #   assert_equal("scissors wins", @rockpaperscissors.scissors_wins())
  # end


  # def test_rock_loses
  #   assert_equal("rock loses", @rockpaperscissors.rock_loses())
  # end


  # def test_paper_loses
  #   assert_equal("paper loses", @rockpaperscissors.paper_loses())
  # end


  # def test_scissors_loses
  #   # assert_equal("scissors loses", @rockpaperscissors.scissors_loses())
  # end


end
