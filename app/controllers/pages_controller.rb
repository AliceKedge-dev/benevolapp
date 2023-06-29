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
end
