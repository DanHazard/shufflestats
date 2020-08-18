class ApplicationController < ActionController::API

  def issue_token(player)
    JWT.encode({player_id: player.id}, ENV['secret_key'], 'HS256')
  end

  def current_player
    @player ||= Player.find_by(id: player_id)
  end

  def token
    request.headers['Authorization']
  end

  def decoded_token
    begin
      JWT.decode(token, ENV['secret_key'], true, { :algorithm => 'HS256'})
    rescue JWT:: DecodeError
      [{}]
    end
  end

  def player_id
    decoded_token.first['player_id']
  end

  def logged_in?
    !!current_player
  end
end

#   before_action :authorized
#
#   def encode_token(payload)
#     JWT.encode(payload, Rails.application.secrets.secret_key_base, 'HS256')
#   end
#
#   def auth_header
#     request.headers['Authorization']
#   end
#
#   def decoded_token
#     if auth_header
#       token = auth_header.split(' ')[1]
#       begin
#         JWT.decode(token, Rails.application.secrets.secret_key_base, true, algorithm: 'HS256')
#       rescue JWT::DecodeError
#         nil
#       end
#     end
#   end
#
#   def current_player
#     if decoded_token
#       player_id = decoded_token[0]['player_id']
#       player = Player.find_by(id: player_id)
#     end
#   end
#
#   def logged_in?
#     !!current_player
#   end
#
#   def authorized
#     render json: {message: 'Please log in'}, status: :unauthorized unless logged_in?
#   end
# end
