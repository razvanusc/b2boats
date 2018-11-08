class AddCategoryToBoats < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :category, :string
    add_column :boats, :rating, :integer
  end
end
