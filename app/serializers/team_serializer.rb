class TeamSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :team_name, :total_points_scored, :total_points_allowed, :total_wins, :total_losses
end
