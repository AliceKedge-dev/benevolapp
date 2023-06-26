class Mission < ApplicationRecord
  belongs_to :asso
  has_many :reservations
  has_many :user, through: :reservations
  has_one_attached :photo
end
