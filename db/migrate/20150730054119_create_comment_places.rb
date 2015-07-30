class CreateCommentPlaces < ActiveRecord::Migration
  def self.up
    create_table :comment_places do |t|
      t.integer :user_id 
      t.text :caption 
      t.datetime :updated_at 
      t.datetime :created_at 
    end
  end
  
  def self.down
    drop_table :comment_places
  end
end
