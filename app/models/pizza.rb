class Pizza < ApplicationRecord
  belongs_to :restaurant

  validates :name, uniqueness: true
  validates :name, :ingredients, :restaurant_id, presence: true
end
