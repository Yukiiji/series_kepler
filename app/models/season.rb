class Season < ApplicationRecord

  belongs_to :series
  has_many :episodes
  has_many :views
end
