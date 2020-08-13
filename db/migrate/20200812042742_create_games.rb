class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :winning_team_id
      t.integer :home_team_score
      t.integer :away_team_score

      t.timestamps
    end
  end
end
