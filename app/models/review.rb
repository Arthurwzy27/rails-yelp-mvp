class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: true, inclusion: 0..5
  # { in: 0..5, message: 'Value shoud be between 0 to 5' }
end
