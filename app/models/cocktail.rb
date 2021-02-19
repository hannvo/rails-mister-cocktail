class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true

  DEFAULT_IMAGE_URL = "https://ginie.de/wp-content/uploads/Martini.jpg"
end
