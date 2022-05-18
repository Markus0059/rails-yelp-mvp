class Review < ApplicationRecord
  belongs_to :restaurant

  RATINGS = (0..5)
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: RATINGS }
  validates :rating, numericality: true
end
