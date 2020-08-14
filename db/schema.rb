# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_12_042800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer "home_team_id"
    t.integer "away_team_id"
    t.integer "winning_team_id"
    t.integer "home_team_score"
    t.integer "away_team_score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "game_id"
    t.integer "home_team_id"
    t.integer "away_team_id"
    t.integer "home_player_one_id"
    t.integer "home_player_two_id"
    t.integer "home_player_three_id"
    t.integer "home_player_four_id"
    t.integer "away_player_one_id"
    t.integer "away_player_two_id"
    t.integer "away_player_three_id"
    t.integer "away_player_four_id"
    t.integer "home_player_one_score"
    t.integer "home_player_two_score"
    t.integer "home_player_three_score"
    t.integer "home_player_four_score"
    t.integer "away_player_one_score"
    t.integer "away_player_two_score"
    t.integer "away_player_three_score"
    t.integer "away_player_four_score"
    t.integer "home_player_one_frames_played"
    t.integer "home_player_two_frames_played"
    t.integer "home_player_three_frames_played"
    t.integer "home_player_four_frames_played"
    t.integer "away_player_one_frames_played"
    t.integer "away_player_two_frames_played"
    t.integer "away_player_three_frames_played"
    t.integer "away_player_four_frames_played"
    t.integer "match_one_winner_id"
    t.integer "match_two_winner_id"
    t.integer "match_three_winner_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.integer "team_id"
    t.integer "frames_played"
    t.integer "total_points_scored"
    t.integer "total_points_allowed"
    t.integer "points_per_frame"
    t.integer "points_against_per_frame"
    t.integer "hammer_rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.integer "total_points_scored"
    t.integer "total_points_allowed"
    t.integer "total_wins"
    t.integer "total_losses"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
