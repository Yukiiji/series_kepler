class Serie < ApplicationRecord

  has_many :seasons
  has_many :bookmarks
  has_many :views
  mount_uploader :picture, PhotoUploader
  validates :picture, presence: true
end
