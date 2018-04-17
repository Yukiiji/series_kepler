class CreateBookmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :bookmarks, id:false do |t|
      t.primary_key :id
    end
  end
end
