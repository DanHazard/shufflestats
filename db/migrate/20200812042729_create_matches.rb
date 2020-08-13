class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :game_id
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :home_player_one_id
      t.integer :home_player_two_id
      t.integer :home_player_three_id
      t.integer :home_player_four_id
      t.integer :away_player_one_id
      t.integer :away_player_two_id
      t.integer :away_player_three_id
      t.integer :away_player_four_id
      t.integer :home_player_one_score
      t.integer :home_player_two_score
      t.integer :home_player_three_score
      t.integer :home_player_four_score
      t.integer :away_player_one_score
      t.integer :away_player_two_score
      t.integer :away_player_three_score
      t.integer :away_player_four_score
      t.integer :home_player_one_frames_played
      t.integer :home_player_two_frames_played
      t.integer :home_player_three_frames_played
      t.integer :home_player_four_frames_played
      t.integer :away_player_one_frames_played
      t.integer :away_player_two_frames_played
      t.integer :away_player_three_frames_played
      t.integer :away_player_four_frames_played
      t.integer :match_one_winner_id
      t.integer :match_two_winner_id
      t.integer :match_three_winner_id

      t.timestamps
    end
  end
end
