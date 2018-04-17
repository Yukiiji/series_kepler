class AddSeriesToSeasons < ActiveRecord::Migration[5.1]
  def change
    add_reference :seasons, :series, foreign_key: true
  end
end
