class Ship < ActiveRecord::Base
  attr_accessible :name, :classification, :weight, :num_engines, :captains_id, :engine_id, :planet_id

  has_one :planet
  has_one :captain
  has_one :engine
end
