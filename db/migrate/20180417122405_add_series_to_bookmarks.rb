class AddSeriesToBookmarks < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookmarks, :serie, foreign_key: true
  end
end
