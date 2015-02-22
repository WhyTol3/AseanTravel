class Place < ActiveRecord::Base
  structure do
    country_id :integer
    name     :string
    detail   :text
    souvenir :string

    timestamps
  end
end

