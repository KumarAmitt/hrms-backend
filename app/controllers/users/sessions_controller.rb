# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  include RackSessionsFix
  respond_to :json

  def user_signed_in
    render json: {user_signed_in: users_signed_in?}
  end

  private

  def respond_with(current_user, _opts = {})
    render json: {
        message: 'Logged in successfully.',
        user: UserSerializer.new(current_user).serializable_hash[:data][:attributes]
    }, status: :ok
  end

  def respond_to_on_destroy
    # if request.headers['Authorization'].present?
    #   jwt_payload = JWT.decode(request.headers['Authorization'].split(' ').last, Rails.application.credentials.devise_jwt_secret_key!).first
    #   current_user = User.find(jwt_payload['sub'])
    # end

    if current_user
      render json: { message: 'Logged out successfully.' }, status: :ok
    else
      render json: { message: "Couldn't find an active session." }, status: :unauthorized
    end
  end

end
