class Episode < ApplicationRecord

  belongs_to :seasons
  has_many :views
  has_many :reviews
end
