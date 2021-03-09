class CreateVans < ActiveRecord::Migration[6.0]
  def change
    create_table :vans do |t|
      t.string :brand
      t.string :model
      t.integer :passengers
      t.text :description
      t.integer :price_per_night
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
