class Api::V1::PlayersController < ApplicationController
  skip_before_action :authorized, only: [:create]
  def create
    player = Player.create(player_params)
    if player.valid?
      token = encode_token(player_id: player.id)
      render json: { player: PlayerSerializer.new(player), jwt: token }, status: :created
    else
      render json: { error: 'failed to create user'}, status: :not_acceptable
    end
  end

  def profile
    render json: { player: PlayerSerializer.new(current_player) }, status: :accepted
  end

  def update
    player = Player.find(params[:id])
    player.update(player_params)
    if player.valid?
      render json: PlayerSerializer.new(player)
    else
      render json: { error: 'failed to update '}
    end
  end

  private
  def player_params
    params.require(:player).permit(:first_name, :last_name, :email, :password, :team_id)
  end
end
