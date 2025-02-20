class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :rating, presence: true
  validates :content, presence: true
end
