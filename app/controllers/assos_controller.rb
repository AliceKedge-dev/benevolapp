class AssosController < ApplicationController
  def index
    @assos = Asso.all
  end

  def show
    @asso = Asso.find(params[:id])
  end

  private

  def assos_params
    params.require(:asso).permit(:photo, :nom, :category, :email, :password)
  end
end
