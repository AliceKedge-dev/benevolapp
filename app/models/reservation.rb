class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :mission
  has_one_attached :photo
  after_create :compute_user_scores
  after_destroy :compute_user_scores

  def compute_user_scores
    self.user.compute_scores
  end
end
