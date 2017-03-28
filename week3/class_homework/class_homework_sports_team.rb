class SportsTeam

  attr_accessor :team_name, :players, :coach_name, :points

  def initialize(input_team_name, input_players, input_coach, input_points)
    @team_name = input_team_name
    @players = input_players
    @coach_name = input_coach
    @points = 0
  end



# def get_team_name
#   return @team_name
# end

# def get_players
#   return @players
# end

# def get_coach_name
#   return @coach_name
# end

def set_coach_name(new_coach_name)
  @coach_name = new_coach_name
end

def add_player(player)
  @players << player
end


def find_player(player_name)
  for player in @players
    if player_name == player
      return true
    end
  end
    return false
end

def win_or_loss(result)
  if result.downcase == "Win"
    @points += 3
  end
end


end