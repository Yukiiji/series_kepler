class AddSeriesToSeasons < ActiveRecord::Migration[5.1]
  def change
    add_reference :seasons, :serie, foreign_key: true
  end
end
