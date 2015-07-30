class ChangedRestaurantsIndexedPlaceId < ActiveRecord::Migration
  def self.up
    add_index :restaurants, :place_id
  end
  
  def self.down
  end
end
