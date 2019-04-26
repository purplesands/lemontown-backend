class ApplicationController < ActionController::API
  def encode_token(payload)
    JWT.encode(payload, Rails.application.credentials.jwt )
  end

  def decode_token
    begin
      JWT.decode(auth_headers, Rails.application.credentials.jwt)
    rescue
      nil
    end
  end

  def auth_headers
    request.headers["Authorization"]
  end

  def curr_user
    user_id = decode_token[0]["user_id"]
    User.find(user_id)
  end

  def logged_in
    !!curr_user
  end

  def authorized
    render json: {errors: 'Please log in'} unless logged_in
  end

end
