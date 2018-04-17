class AddSeriesToBookmarks < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookmarks, :series, foreign_key: true
  end
end
