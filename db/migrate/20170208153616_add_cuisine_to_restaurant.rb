class AddCuisineToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_reference :restaurants, :cuisine, foreign_key: true
  end
end
