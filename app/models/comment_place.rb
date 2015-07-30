class CommentPlace < ActiveRecord::Base
	belongs_to :user
	belongs_to :place

  structure do
    user_id :integer
    place_id :integer
    caption :text

    timestamps
  end
end

