class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.boolean :recommend
      t.string :explanation
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
