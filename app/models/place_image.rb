class PlaceImage < ActiveRecord::Base

	belongs_to :place

	mount_uploader :image, PlaceUploader

	structure do
	 image    :string
	 place_id :integer

	 timestamps
	end
end

