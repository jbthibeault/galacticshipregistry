class Planet < ActiveRecord::Base
  attr_accessible :name, :system, :tax_rate

#  has_many :captain
end
