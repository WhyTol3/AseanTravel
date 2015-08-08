class ChangedSouvenirsAddedDescription < ActiveRecord::Migration
  def self.up
    add_column :souvenirs, :description, :text
  end
  
  def self.down
    remove_column :souvenirs, :description
  end
end
