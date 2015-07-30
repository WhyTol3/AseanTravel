class ChangedPlacesDeletedDraftCommentsCountPublishedCommentsCountDeletedCommentsCount < ActiveRecord::Migration
  def self.up
    remove_column :places, :draft_comments_count
    remove_column :places, :published_comments_count
    remove_column :places, :deleted_comments_count
  end
  
  def self.down
    add_column :places, :draft_comments_count, :integer, :limit=>4, :default=>"0"
    add_column :places, :published_comments_count, :integer, :limit=>4, :default=>"0"
    add_column :places, :deleted_comments_count, :integer, :limit=>4, :default=>"0"
  end
end
