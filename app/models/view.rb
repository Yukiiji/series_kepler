 class View < ApplicationRecord

  belongs_to :season
  belongs_to :serie
  belongs_to :episode
  belongs_to :user
end
