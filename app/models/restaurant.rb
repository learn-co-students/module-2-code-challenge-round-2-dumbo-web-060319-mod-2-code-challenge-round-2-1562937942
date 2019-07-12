class Restaurant < ApplicationRecord
  has_many :pizzas

  def self.search(name)
    if name
      where('name LIKE ?', "%#{name}%")
    else
      all
    end
  end
end
