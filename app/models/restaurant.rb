class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates_associated :reviews
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :phone_number, presence: true

  validates :category, inclusion: { in: CATEGORIES }

end
