class Ship < ActiveRecord::Base
  attr_accessible :name, :classification, :weight, :num_engines, :captains_id, :engine_id, :planet_id

  belongs_to :planet
  belongs_to :captain
  belongs_to :engine
end
