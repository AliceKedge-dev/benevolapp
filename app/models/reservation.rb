class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :mission
  has_one_attached :photo
end
