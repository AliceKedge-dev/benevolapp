class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :mission
  # has_one :asso, through: :mission
end
