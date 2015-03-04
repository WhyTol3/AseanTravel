class ChangedPlaceImagesIndexedPlaceId < ActiveRecord::Migration
  def self.up
    add_index :place_images, :place_id
  end
  
  def self.down
  end
end
