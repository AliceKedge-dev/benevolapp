class Mission < ApplicationRecord
  belongs_to :asso
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
  has_one_attached :photo
end
