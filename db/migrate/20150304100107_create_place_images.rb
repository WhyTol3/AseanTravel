class CreatePlaceImages < ActiveRecord::Migration
  def self.up
    create_table :place_images do |t|
      t.string :image 
      t.integer :place_id 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
  end
  
  def self.down
    drop_table :place_images
  end
end
