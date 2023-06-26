class Asso < ApplicationRecord
  has_many :missions, dependent: :destroy
end
