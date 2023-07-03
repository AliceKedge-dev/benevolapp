class AddMissionToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :mission, foreign_key: true
  end
end
