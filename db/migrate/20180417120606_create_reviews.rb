class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews, id:false do |t|
      t.primary_key :id
      t.string :comment
      t.integer :rating
    end
  end
end
