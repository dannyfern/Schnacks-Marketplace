class Listing < ApplicationRecord
has_one_attached :image
validate :acceptable_image
validates :price, numericality: {greater_than: 0}
validates :name, :description, :price, :city, :state, :best_before, presence: true

end
