class CreateSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :series, id:false do |t|
      t.primary_key :id
      t.string :name
      t.date :air_date
      t.string :creator
      t.string :synopsis
      t.string :picture
    end
  end
end
