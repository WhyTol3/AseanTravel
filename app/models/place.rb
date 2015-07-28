class Place < ActiveRecord::Base

	has_many :place_images
	has_many :souvenirs
	has_many :hotels
	has_many :restaurants
	has_many :comments, as: :commentable

	belongs_to :country

	accepts_nested_attributes_for :place_images, :souvenirs, :hotels, :restaurants

	structure do
		country_id :integer
		name     :string
		detail   :text
		lat	:float
  	log	:float

		timestamps
	end
end

