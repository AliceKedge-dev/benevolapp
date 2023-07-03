class MissionsController < ApplicationController
  def index
    @missions = Mission.all
    @assos = Asso.all
    @chatrooms = Chatroom.all
  end

  def show
    @mission = Mission.find(params[:id])
    @reservation = Reservation.new
    @chatroom = @mission.chatroom
  end

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(params[:mission])
    @mission.save
    Chatroom.create!(mission: @mission)
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
    @chatrooms = []
    @reservations.each do |reservation|
      @missions << reservation.mission
      @chatrooms << reservation.mission.chatroom
    end
  end

  def confirmation
    @missions = Mission.all
    @mission = Mission.find(params[:id])
  end

  def search
    @results = Mission.all
    if params[:query].present?
      sql_subquery = "nom ILIKE :query OR localisation ILIKE :query OR category ILIKE :query OR temps ILIKE :query"
      @results = @results.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def filter
    @category = params[:category]
    @missions = Mission.where(category: @category)
  end

  private

  def missions_params
    params.require(:mission).permit(:nom, :temps, :photo, :description, :localisation, :date, :category, :date_création,:participants_max)
  end
end
