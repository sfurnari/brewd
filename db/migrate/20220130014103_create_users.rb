class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :city
      t.string :suburb
      t.text :photo_url

      t.timestamps
    end
  end
end
