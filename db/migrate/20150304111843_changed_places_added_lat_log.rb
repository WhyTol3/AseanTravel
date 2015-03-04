class ChangedPlacesAddedLatLog < ActiveRecord::Migration
  def self.up
    add_column :places, :lat, :float
    add_column :places, :log, :float
  end
  
  def self.down
    remove_column :places, :lat
    remove_column :places, :log
  end
end
