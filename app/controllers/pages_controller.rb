class PagesController < ApplicationController
  def home
    @missions = Mission.geocoded
    @markers = @missions.map do |mission|
      {
        lat: mission.latitude,
        lng: mission.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { mission: mission }),
        marker_html: render_to_string(partial: "marker", locals: { mission: mission })
      }
    end
  end

  def confirmation
    @mission = Mission.find(params[:mission_id])
    @chatroom = @mission.chatroom
  end

  def profile
    @chatroom = Chatroom.last

    current_user.animal_count < 3 ? @url_animal = "badge-patte-0.png" : @url_animal = "badge-patte-bronze.png"
    current_user.social_count < 3 ? @url_social = "badge-social-0.png" : @url_social = "badge-social.png"
    current_user.environnement_count < 3 ? @url_environnement = "badge-environnement-0.png" : @url_environnement = "badge-environnement.png"
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
      info_window_html: render_to_string(partial: "info_window", locals: { mission: mission }),
      marker_html: render_to_string(partial: "marker", locals: { mission: mission })
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
