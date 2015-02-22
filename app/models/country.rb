class Country < ActiveRecord::Base
  structure do
    name  :string
    description :string
    image :string

    timestamps
  end
end

