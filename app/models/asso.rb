class Asso < ApplicationRecord
  has_many :missions, dependent: :destroy
  has_one_attached :photo
end
