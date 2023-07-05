class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reservations, dependent: :destroy
  has_many :missions, through: :reservations
  has_one_attached :photo
  has_many :messages
  has_many :chatrooms, through: :messages

  def compute_scores
    missions_categories = self.reservations.map do |reservation|
      reservation.mission.category
    end

    animal_count = missions_categories.count do |category|
      category == "animal"
    end
    self.animal_count = [animal_count, 3].min

    social_count = missions_categories.count do |category|
      category == "social"
    end
    self.social_count = [social_count, 3].min

    environnement_count = missions_categories.count do |category|
      category == "environnement"
    end
    self.environnement_count = [environnement_count, 3].min
    self.save!
  end
end
