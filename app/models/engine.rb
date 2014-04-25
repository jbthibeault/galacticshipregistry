class Engine < ActiveRecord::Base
  attr_accessible :name, :model_num, :manufacturer, :tax
end
