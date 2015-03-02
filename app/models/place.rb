class Place < ActiveRecord::Base

	# attr_accessible :country_id, :name, :detail, :souvenir
	belongs_to :country

	structure do
		country_id :integer
		name     :string
		detail   :text

		timestamps
	end
end

