class CreateCafesRating < ActiveRecord::Migration[5.2]
  def change
    create_table :cafes_rating do |t|
      t.integer :user_id
      t.integer :cafe_id
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
