class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def show
    @user = User.where("id = '#{params[:id]}'").first
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.where("id = '#{params[:id]}'").first
    @users = User.all
  end

  def create
    @user = User.new(params[:user])
    @user.username = params[:user][:username]
    @user.passwd = params[:user][:password]

    if @user.save
      session[:user_id] = @user.id
      redirect_to ip_geolocations_path
    else
      render 'new'
    end
  end

  def update
    @user = User.where("id = '#{params[:id]}'").first

    if @user
      @user.update(params[:user])
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy

    render 'edit'
  end

  private

  def params
    request.params
  end

  def required_params
    params.require(:user).permit(:username, :password)
  end
end
