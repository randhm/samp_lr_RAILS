class SamplePack < ActiveRecord::Base
  attr_accessible :name
  has_many :samples
end
