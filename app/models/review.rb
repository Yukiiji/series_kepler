class Review < ApplicationRecord

  belongs_to :user
  belongs_to :episode

  validates :rating, presence: true
  validates :comment, length: { minimum: 5 }
end
