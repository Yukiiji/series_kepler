class Bookmark < ApplicationRecord

  belongs_to :users
  has_many :series
end
