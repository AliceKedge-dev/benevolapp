class MissionsController < ApplicationController
  def index
    @missions = Mission.all
    @assos = Asso.all
  end

  def show
    @mission = Mission.find(params[:id])
    @reservation = Reservation.new
  end

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(params[:mission])
    @mission.save
  end

  def update
    @mission = Mission.find(params[:id])
    @mission.save
  end

  def delete
    @mission = Mission.find(params[:id])
    @mission.destroy
  end

  def mesmissions
    @reservations = current_user.reservations
    @missions = []
    @reservations.each do |reservation|
      @missions << reservation.mission
    end
  end

  def confirmation
    @missions = Mission.all
    @mission = Mission.find(params[:id])
  end


  private

  def missions_params
    params.require(:mission).permit(:nom, :temps, :photo, :description, :localisation, :date, :category, :date_création,
    :participants_max)
  end
end
