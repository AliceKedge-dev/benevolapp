class Mission < ApplicationRecord
  belongs_to :asso
  has_one :chatroom, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
  has_one_attached :photo
  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
end
