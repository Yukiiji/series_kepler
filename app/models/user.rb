class User < ApplicationRecord

  has_many :bookmarks
  has_many :reviews
  has_many :views
end
