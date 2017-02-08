class AddRestrictionToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_reference :restaurants, :restriction, foreign_key: true
  end
end
