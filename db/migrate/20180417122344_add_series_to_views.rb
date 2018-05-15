class AddSeriesToViews < ActiveRecord::Migration[5.1]
  def change
    add_reference :views, :serie, foreign_key: true
  end
end
