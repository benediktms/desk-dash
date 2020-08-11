class Review < ApplicationRecord
  belongs_to :space
  validates :content, presence: true
  validates :rating, inclusion: { in: 1..5 }, numericality: { only_intiger: true }
end
