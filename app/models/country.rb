class Country < ActiveRecord::Base
	# attr_accessible :name, :description, :image
	has_many :places

	structure do
		name  :string
		description :string
		image :string

		timestamps
	end
end

