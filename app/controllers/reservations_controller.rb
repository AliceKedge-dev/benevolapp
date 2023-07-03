class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def create
    @reservation = Reservation.new
    @reservation.user = current_user
    @reservation.mission = Mission.find(params[:mission_id])
    if @reservation.save!
      redirect_to confirmation_path(mission_id: @reservation.mission.id), notice: "La reservation a été créé avec succès."
    else
      render :new
    end
  end


end
