class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes, id:false do |t|
      t.primary_key :id
      t.string :title
      t.integer :number
      t.string :synopsis
    end
  end
end
