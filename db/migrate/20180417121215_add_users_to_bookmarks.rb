class AddUsersToBookmarks < ActiveRecord::Migration[5.1]
  def change
    add_reference :bookmarks, :users, foreign_key: true
  end
end
