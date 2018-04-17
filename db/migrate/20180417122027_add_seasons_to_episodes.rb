class AddSeasonsToEpisodes < ActiveRecord::Migration[5.1]
  def change
    add_reference :episodes, :seasons, foreign_key: true
  end
end
