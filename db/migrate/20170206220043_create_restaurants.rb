class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :url
      t.string :hours
      t.string :address
      t.string :city

      t.timestamps
    end
  end
end
