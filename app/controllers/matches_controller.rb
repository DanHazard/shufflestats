class MatchesController < ApplicationController

  def create
    match = Match.create(game_id: params[:game_id], home_team_id: params[:home_team_id], away_team_id: params[:away_team_id])
    render json: MatchSerializer.new(match)
  end

end
