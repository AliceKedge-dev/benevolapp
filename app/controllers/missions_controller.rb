class MissionsController < ApplicationController
  def index
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

  private

  def missions_params
    params.require(:mission).permit(:nom, :temps, :photo, :description, :localisation, :date, :category, :date_création, :participants_max)
  end
end
