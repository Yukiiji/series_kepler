class AddEpisodesToViews < ActiveRecord::Migration[5.1]
  def change
    add_reference :views, :episodes, foreign_key: true
  end
end
