class Van < ApplicationRecord
  belongs_to :user
  validates :brand, :model, :passengers, :description, :location, :price_per_night, presence: true
end
