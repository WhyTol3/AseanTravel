class Place < ActiveRecord::Base

	# attr_accessible :country_id, :name, :detail, :souvenir
	belongs_to :country
	has_many :comments, as: :commentable
	
	structure do
		country_id :integer
		name     :string
		detail   :text

		timestamps
	end
end

