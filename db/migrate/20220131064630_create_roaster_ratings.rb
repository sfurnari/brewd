class CreateRoasterRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :roaster_ratings do |t|
      t.integer :user_id
      t.integer :roaster_id
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
