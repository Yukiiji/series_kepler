class CreateViews < ActiveRecord::Migration[5.1]
  def change
    create_table :views, id:false do |t|
      t.primary_key :id
    end
  end
end
