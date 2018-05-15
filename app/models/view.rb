class View < ApplicationRecord

  belongs_to :seasons
  belongs_to :series
  belongs_to :episodes
  belongs_to :users
end
