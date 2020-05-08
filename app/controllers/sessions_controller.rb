class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new; end

  def create
    @user = User.find_by(username: params[:username])
    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id

      redirect_to ip_geolocations_path
    else
      flash[:alert] = if !@user.nil?
                        'Password is incorrect'
                      else
                        'User does not exist'
                      end

      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to new_session_path
  end
end
