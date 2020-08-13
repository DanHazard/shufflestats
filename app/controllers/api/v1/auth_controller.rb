class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    player = Player.find_by(email: user_login_params[:email])
    if player && player.authenticate(user_login_params[:password])
      token = encode_token({ player_id: player.id})
      render json: { player: PlayerSerializer.new(user), jwt: token}, status: :accepted
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end

  private

  def player_login_params
    params.require(:auth).permit(:email, :password)
  end
end
