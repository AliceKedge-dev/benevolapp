class SessionsController < ApplicationController
  def new
    @user = User.new
    redirect_to root_path
  end

  def create
    @user = User.find_by(email: params[:user][:email])

    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Vous êtes maintenant connecté."
    else
      flash.now[:alert] = "Adresse e-mail ou mot de passe invalide."
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to new_user_session_path, notice: "Vous avez été déconnecté avec succès."
  end
end
