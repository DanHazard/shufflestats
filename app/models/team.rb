class Team < ApplicationRecord
  has_many :players

  has_many :home_games, class_name: 'Game', foreign_key: :home_team_id, dependent: :destroy
  has_many :teams_played_at_home, through: :home_games, source: :away_team

  has_many :away_games, class_name: 'Game', foreign_key: :away_team_id, dependent: :destroy
  has_many :teams_played_on_road, through: :away_games, source: :home_team

end
