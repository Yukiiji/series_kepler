class AddEpisodesToViews < ActiveRecord::Migration[5.1]
  def change
    add_reference :views, :episode, foreign_key: true
  end
end
