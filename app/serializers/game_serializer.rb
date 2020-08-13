class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :home_team_id, :away_team_id, :winning_team_id, :home_team_score, :away_team_score
end
