class UsersController < ApplicationController
  def index
    @users = User.all
  end

  private

  def users_params
    params.require(:user).permit(:email, :username, :photo_url, :photo, :password, :nickname)
  end
end
