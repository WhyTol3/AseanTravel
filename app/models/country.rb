class Country < ActiveRecord::Base
	# attr_accessible :name, :description, :image
	has_many :places
	mount_uploader :image, CountryUploader
	# mount_uploader :avatar, AvatarUploader
	structure do
		name  :string
		description :string
		image :string

		timestamps
	end
end

