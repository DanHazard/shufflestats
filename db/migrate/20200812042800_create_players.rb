class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.integer :team_id
      t.integer :frames_played
      t.integer :total_points_scored
      t.integer :total_points_allowed
      t.integer :points_per_frame
      t.integer :points_against_per_frame
      t.integer :hammer_rating

      t.timestamps
    end
  end
end
