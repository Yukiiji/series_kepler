class Serie < ApplicationRecord

  has_many :seasons
  has_many :bookmarks
  has_many :views
end
