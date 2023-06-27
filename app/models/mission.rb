class Mission < ApplicationRecord
  belongs_to :asso
  has_many :reservations
  has_many :user, through: :reservations
  has_one_attached :photo
  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
end
