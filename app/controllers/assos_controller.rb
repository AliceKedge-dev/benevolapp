class AssosController < ApplicationController

  def index
    @assos = Asso.all
  end

  private

  def assos_params
    params.require(:asso).permit(:photo, :nom, :category, :email, :password)
  end
end
