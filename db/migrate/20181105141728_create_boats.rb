class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :price_per_hour
      t.integer :hours
      t.integer :capacity
      t.boolean :has_license
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
