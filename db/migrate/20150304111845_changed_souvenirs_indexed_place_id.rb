class ChangedSouvenirsIndexedPlaceId < ActiveRecord::Migration
  def self.up
    add_index :souvenirs, :place_id
  end
  
  def self.down
  end
end
