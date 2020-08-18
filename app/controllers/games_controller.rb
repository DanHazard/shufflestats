class GamesController < ApplicationController

  def create
    game = Game.create(home_team_id: params[:home_team_id], away_team_id: params[:away_team_id])
    render json: GameSerializer.new(game)
  end

end
