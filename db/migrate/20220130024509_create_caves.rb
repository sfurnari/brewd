class CreateCaves < ActiveRecord::Migration[5.2]
  def change
    create_table :cafes do |t|
      t.string :name
      t.text :location

      t.timestamps
    end
  end
end
