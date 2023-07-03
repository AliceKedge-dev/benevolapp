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


  def search
    @results = Mission.all
    if params[:query].present?
      sql_subquery = "nom ILIKE :query OR localisation ILIKE :query OR category ILIKE :query OR temps ILIKE :query"
      @results = @results.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def filter
    @category = params[:category]
    @missions = Mission.where(category: @category).distinct
  end

  def cancel
    @mission = Mission.find(params[:id])
    @reservation = Reservation.find_by(
      mission: @mission,
      user: current_user
    )
    @reservation.destroy
    redirect_to root_path, notice: "Mission annulée avec succès."
  end


  private

  def missions_params
    params.require(:mission).permit(:nom, :temps, :photo, :description, :localisation, :date, :category, :date_création,
    :participants_max)
  end
end
