class CreateSeasons < ActiveRecord::Migration[5.1]
  def change
    create_table :seasons, id:false do |t|
      t.primary_key :id
      t.integer :number
      t.date :air_date
    end
  end
end
