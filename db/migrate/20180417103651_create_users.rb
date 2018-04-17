class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, id:false do |t|
      t.primary_key :id
      t.string :mail
      t.string :nickname
      t.string :password
    end
  end
end
