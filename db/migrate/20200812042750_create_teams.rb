class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.integer :total_points_scored
      t.integer :total_points_allowed
      t.integer :total_wins
      t.integer :total_losses

      t.timestamps
    end
  end
end
