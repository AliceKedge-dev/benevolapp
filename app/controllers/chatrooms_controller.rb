class ChatroomsController < ApplicationController
  def index
    @chatrooms = []
    current_user.missions.each do |mission|
      @chatrooms << mission.chatroom
    end
    @message = Message.new
    @asso = Asso.new
    @mission = Mission.new
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    if @chatroom.mission.present?
      @mission = @chatroom.mission
      @asso = @mission.asso
    else
      @mission = nil
      @asso = nil
    end
  end
end
