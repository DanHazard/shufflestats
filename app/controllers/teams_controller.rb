class TeamsController < ApplicationController

  def index
    teams = Team.all
    render json: TeamSerializer.new(teams)
  end

  def show
    team = Team.find_by(id: params[:id])
    render json: TeamSerializer.new(team)
  end

end
