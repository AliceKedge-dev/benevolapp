class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @missions = Mission.geocoded
    @markers = @missions.map do |mission|
      {
        lat: mission.latitude,
        lng: mission.longitude,
        info_window_html: render_to_string(partial: "info_window",
        locals: {mission: mission}),
        marker_html: render_to_string(partial: "marker",
        locals: {mission: mission})
      }
    end
  end

  def confirmation
  end

  def profile
    @chatroom = Chatroom.last
  end

  def index
    @users = User.all
    @missions = Mission.all
  end

  def map
    @missions = Mission.geocoded
    @markers = @missions.map do |mission|
    {
      lat: mission.latitude,
      lng: mission.longitude,
      info_window_html: render_to_string(partial: "info_window",
      locals: {mission: mission}),
      marker_html: render_to_string(partial: "marker",
      locals: {mission: mission})
    }
    end
  end

  def animal_progression
    @missions = current_user.missions.where(category: "animal")
  end

  def social_progression
    @missions = current_user.missions.where(category: "social")
  end

  def environnement_progression
    @missions = current_user.missions.where(category: "environnement")
  end
end
