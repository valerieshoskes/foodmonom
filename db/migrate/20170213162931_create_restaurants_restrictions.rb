class CreateRestaurantsRestrictions < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants_restrictions do |t|
      t.references :restriction, foreign_key: true
      t.references :restaurant, foreign_key: true
    end
  end
end
