class PlayerSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :id, :first_name, :last_name, :email, :team_id, :frames_played, :total_points_scored, :total_points_allowed, :points_per_frame, :points_against_per_frame, :hammer_rating
end
