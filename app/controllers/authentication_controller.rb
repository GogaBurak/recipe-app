class AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login

  # POST /auth/login
  def login
    @user = User.find_by_email(params[:email])

    return render json: { error: 'unauthorized' }, status: :unauthorized unless @user&.authenticate(params[:password])

    token = JsonWebToken.encode(user_id: @user.id)
    binding.pry
    time = Time.now + 24.hours.to_i
    render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"),
                   name: @user.name }, status: :ok
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end
