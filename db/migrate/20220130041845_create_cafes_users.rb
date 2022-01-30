class CreateCafesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :cafes_users do |t|
      t.integer :cafe_id
      t.integer :user_id
    end
  end
end
