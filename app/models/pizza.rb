class Pizza < ApplicationRecord
  belongs_to :restaurant
   validates_uniqueness_of :name
end
