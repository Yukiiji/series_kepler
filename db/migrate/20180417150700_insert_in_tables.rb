class InsertInTables < ActiveRecord::Migration[5.1]
  def change
    restaurant = Restaurant.new(attributes)
    if restaurant.valid?
      restaurant.save!
    else
  end
end
