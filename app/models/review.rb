class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }, allow_blank: false
  validates :rating, numericality: { only_integer: true }
end
