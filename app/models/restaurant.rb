class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :phone_number, presence: true
  validates_inclusion_of :category, in: %w[chinese italian japanese french belgian], message: "pas beau ce que tu me fais là"

end
