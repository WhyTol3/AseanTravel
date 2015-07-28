class Restaurant < ActiveRecord::Base

	belongs_to :place

	mount_uploader :image, SouvenirUploader

  structure do
    name        :string
    image       :string
    place_id    :string
    description :text

    timestamps
  end
end

