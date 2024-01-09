class CurrentUserController < ApplicationController
  skip_before_action :authenticate_user!, only: :user_signed_in
  def index
    render json: UserSerializer.new(current_user).serializable_hash[:data][:attributes], status: :ok
  end

  def user_signed_in
    render json: {user_signed_in: user_signed_in?}
  end

end
