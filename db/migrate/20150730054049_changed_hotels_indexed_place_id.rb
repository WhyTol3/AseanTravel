class ChangedHotelsIndexedPlaceId < ActiveRecord::Migration
  def self.up
    add_index :hotels, :place_id
  end
  
  def self.down
  end
end
