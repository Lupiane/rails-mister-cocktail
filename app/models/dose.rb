class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, presence: true

  validates :cocktail, uniqueness: { scope: :ingredient }
  validates :ingredient, uniqueness: { scope: :cocktail }
end
