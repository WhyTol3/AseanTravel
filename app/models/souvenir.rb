class Souvenir < ActiveRecord::Base

	belongs_to :place

	mount_uploader :image, SouvenirUploader

	structure do
	 name     :string
	 image    :string
	 place_id :integer

	 timestamps
	end
end

