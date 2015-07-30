class ChangedCommentPlacesAddedPlaceIdAndIndexedUserId < ActiveRecord::Migration
  def self.up
    add_column :comment_places, :place_id, :integer
    add_index :comment_places, :user_id
    add_index :comment_places, :place_id
  end
  
  def self.down
    remove_column :comment_places, :place_id
  end
end
