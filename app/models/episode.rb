class Episode < ApplicationRecord

  belongs_to :season
  has_many :views
  has_many :reviews
end
