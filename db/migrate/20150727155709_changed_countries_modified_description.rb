class ChangedCountriesModifiedDescription < ActiveRecord::Migration
  def self.up
    change_column :countries, :description, :text
  end
  
  def self.down
    change_column :countries, :description, :string, :limit=>255, :default=>nil
  end
end
