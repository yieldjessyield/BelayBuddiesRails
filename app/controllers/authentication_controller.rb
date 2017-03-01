class AuthenticationController < ApplicationController
  # this is called when signing in
  def authenticate_user
    # find_for_database_authentication is a devise method
    user = User.find_for_database_authentication(email: params[:email])
    if user.valid_password?(params[:password])
      render json: payload(user)
    else
      render json: {errors: ['Invalid Username/Password']}, status: :unauthorized
    end
  end

  private

  def payload(user)
    return nil unless user and user.id
    {
      auth_token: JsonWebToken.encode({user_id: user.id}),
      # can update with other user info if needed
      user: {id: user.id, email: user.email}
    }
  end
end