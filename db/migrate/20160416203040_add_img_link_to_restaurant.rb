class AddImgLinkToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :img_link, :string
  end
end
