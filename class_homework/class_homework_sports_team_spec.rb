require ('minitest/autorun')
require_relative('./class_homework_sports_team')

class TestSportsTeam < MiniTest::Test

  def setup
    @sports_team = SportsTeam.new("CodeClan FC", ["Sean Kane", "Grant Muir", "Jay Norris", "Chris Blackhall"], "David Robertson", 0) #this means we don't have to use this line of code in each test, instead just use @bank_account to call it in the expected value in assert_equal
  end



# def test_get_sports_team()
#   assert_equal("CodeClan FC", @sports_team.get_team_name)
# end

# def test_get_players()
#   assert_equal(["Sean Kane", "Grant Muir", "Jay Norris", "Chris Blackhall"], @sports_team.get_players)
# end

# def test_get_coach_name()
#   assert_equal("David Robertson", @sports_team.get_coach_name)
# end

def test_get_sports_team()
  assert_equal("CodeClan FC", @sports_team.team_name)
end

def test_get_players()
  assert_equal(["Sean Kane", "Grant Muir", "Jay Norris", "Chris Blackhall"], @sports_team.players)
end

def test_get_coach_name()
  assert_equal("David Robertson", @sports_team.coach_name)
end


def test_set_coach_name()
  assert_equal("Barry", @sports_team.set_coach_name("Barry"))
end

def test_add_player()
  @sports_team.add_player("John Brown")
  assert_equal(5, @sports_team.players.length)
end

def test_find_player()
  assert_equal(true, @sports_team.find_player("Grant Muir"))
end

def win_or_loss
  assert_equal(1, @sports_team.points)
end


end