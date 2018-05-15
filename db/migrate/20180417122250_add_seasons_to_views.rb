class AddSeasonsToViews < ActiveRecord::Migration[5.1]
  def change
    add_reference :views, :season, foreign_key: true
  end
end
