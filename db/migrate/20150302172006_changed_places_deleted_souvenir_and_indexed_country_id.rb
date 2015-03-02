class ChangedPlacesDeletedSouvenirAndIndexedCountryId < ActiveRecord::Migration
  def self.up
    remove_column :places, :souvenir
    add_index :places, :country_id
  end
  
  def self.down
    add_column :places, :souvenir, :string, :limit=>255, :default=>nil
  end
end
