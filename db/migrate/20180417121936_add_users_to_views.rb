class AddUsersToViews < ActiveRecord::Migration[5.1]
  def change
    add_reference :views, :users, foreign_key: true
  end
end
