class AddHoursToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :opening, :time
    add_column :restaurants, :closing, :time
  end
end
