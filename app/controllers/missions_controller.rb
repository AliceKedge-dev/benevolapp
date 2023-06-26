class MissionsController < ApplicationController

  def index
    @missions = Mission.all
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
end
