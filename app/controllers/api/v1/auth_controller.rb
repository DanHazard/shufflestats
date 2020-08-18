class Api::V1::AuthController < ApplicationController
  # skip_before_action :authorized, only: [:create]
  #
  # def create
  #   player = Player.find_by(email: player_login_params[:email])
  #   if player && player.authenticate(player_login_params[:password])
  #     token = encode_token({ player_id: player.id})
  #     render json: { player: PlayerSerializer.new(player), jwt: token}, status: :accepted
  #   else
  #     render json: { error: 'Invalid email or password' }, status: :unauthorized
  #   end
  # end

  def create
    player = Player.find_by(email: params[:email])
    if player && player.authenticate(params[:password])
      payload = {player_id: player.id}
      token = JWT.encode(payload, 'SECRET', 'HS256')
      render json: { player: PlayerSerializer.new(player), token: token}
    else
      render json: { error: 'Invalid username or password' }, status: 401
    end
  end

  def show
    token = request.headers[:Authorization].split().last
    decoded_token = JWT.decode(token, 'SECRET', true, { algorithm: 'HS256' })
    player_id = decoded_token[0]['player_id']
    player = Player.find(player_id)
    if player
      render json: { player: PlayerSerializer.new(player), token: token}
    else
      render json: { error: 'Invalid token' }, status: 401
    end
  end

  private

  def player_login_params
    params.require(:auth).permit(:email, :password)
  end
end
