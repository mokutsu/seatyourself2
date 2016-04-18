class AddCapacitytoRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :capacity, :integer
    add_column :restaurants, :category_id, :integer
  end

end
