# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.destroy_all
Team.destroy_all
Game.destroy_all
Match.destroy_all

PF = (1..100).to_a
HAMMER = (50..66).to_a
PP = (2..7).to_a

### Teams ###
t1 = Team.create(team_name: 'Slick Biscuits', total_points_scored: 69, total_points_allowed: 420, total_wins: 2, total_losses: 4)
t2 = Team.create(team_name: 'Hammer Down', total_points_scored: 321, total_points_allowed: 169, total_wins: 6, total_losses: 0)

### Players ###
p1 = Player.create!(first_name: 'Dan', last_name: 'Test', email: 'dantest@test.com', team_id: t1.id, frames_played: PF.sample, total_points_scored: PF.sample, total_points_allowed: PF.sample, points_per_frame: PP.sample, points_against_per_frame: PP.sample, hammer_rating: HAMMER.sample)
p2 = Player.create!(first_name: 'Jim', last_name: 'Test', email: 'jimtest@test.com', team_id: t2.id, frames_played: PF.sample, total_points_scored: PF.sample, total_points_allowed: PF.sample, points_per_frame: PP.sample, points_against_per_frame: PP.sample, hammer_rating: HAMMER.sample)
p3 = Player.create!(first_name: 'Tom', last_name: 'Test', email: 'tomtest@test.com', team_id: t1.id, frames_played: PF.sample, total_points_scored: PF.sample, total_points_allowed: PF.sample, points_per_frame: PP.sample, points_against_per_frame: PP.sample, hammer_rating: HAMMER.sample)
p4 = Player.create!(first_name: 'Kate', last_name: 'Test', email: 'katetest@test.com', team_id: t1.id, frames_played: PF.sample, total_points_scored: PF.sample, total_points_allowed: PF.sample, points_per_frame: PP.sample, points_against_per_frame: PP.sample, hammer_rating: HAMMER.sample)
p5 = Player.create!(first_name: 'Julie', last_name: 'Test', email: 'julietest@test.com', team_id: t2.id, frames_played: PF.sample, total_points_scored: PF.sample, total_points_allowed: PF.sample, points_per_frame: PP.sample, points_against_per_frame: PP.sample, hammer_rating: HAMMER.sample)
p6 = Player.create!(first_name: 'Mads', last_name: 'Test', email: 'madstest@test.com', team_id: t2.id, frames_played: PF.sample, total_points_scored: PF.sample, total_points_allowed: PF.sample, points_per_frame: PP.sample, points_against_per_frame: PP.sample, hammer_rating: HAMMER.sample)
p7 = Player.create!(first_name: 'Pat', last_name: 'Test', email: 'pattest@test.com', team_id: t2.id, frames_played: PF.sample, total_points_scored: PF.sample, total_points_allowed: PF.sample, points_per_frame: PP.sample, points_against_per_frame: PP.sample, hammer_rating: HAMMER.sample)
p8 = Player.create!(first_name: 'Spicy', last_name: 'Test', email: 'spicytest@test.com', team_id: t1.id, frames_played: PF.sample, total_points_scored: PF.sample, total_points_allowed: PF.sample, points_per_frame: PP.sample, points_against_per_frame: PP.sample, hammer_rating: HAMMER.sample)

### Games ###
g1 = Game.create(home_team_id: t1.id, away_team_id: t2.id, winning_team_id: t1.id, home_team_score: 21, away_team_score: 8)
g2 = Game.create(home_team_id: t2.id, away_team_id: t1.id, winning_team_id: t2.id, home_team_score: 30, away_team_score: 16)

### Matches ###
m1 = Match.create(game_id: g1.id, home_team_id: g1.home_team_id, away_team_id: g1.away_team_id, home_player_one_id: t1.players.ids[0], home_player_two_id: t1.players.ids[1], home_player_three_id: t1.players.ids[2], home_player_four_id: t1.players.ids[3], away_player_one_id: t2.players.ids[0], away_player_two_id: t2.players.ids[1], away_player_three_id: t2.players.ids[2], away_player_four_id: t2.players.ids[3], home_player_one_score: 7, home_player_two_score: 7, home_player_three_score: 14, home_player_four_score: 8, away_player_one_score: 0, away_player_two_score: 8, away_player_three_score: 21, away_player_four_score: 0, home_player_one_frames_played: 4, home_player_two_frames_played: 4,home_player_three_frames_played: 4,home_player_four_frames_played: 4, away_player_one_frames_played: 4, away_player_two_frames_played: 4, away_player_three_frames_played: 4, away_player_four_frames_played: 4, match_one_winner_id: t1.id, match_two_winner_id: t1.id, match_three_winner_id: nil)
