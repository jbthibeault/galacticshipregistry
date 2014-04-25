class Captain < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :date_of_birth, :planet_id

  has_one :planet
end
