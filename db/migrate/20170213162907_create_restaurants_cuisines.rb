class CreateRestaurantsCuisines < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants_cuisines do |t|
      t.references :cuisine, foreign_key: true
      t.references :restaurant, foreign_key: true
    end
  end
end
