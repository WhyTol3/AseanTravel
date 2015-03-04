class CreateSouvenirs < ActiveRecord::Migration
  def self.up
    create_table :souvenirs do |t|
      t.string :name 
      t.string :image 
      t.integer :place_id 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
  end
  
  def self.down
    drop_table :souvenirs
  end
end
