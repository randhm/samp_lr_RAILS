class SamplePlay < ActiveRecord::Base
  attr_accessible :time_played
  belongs_to :sample
end
