class SamplePlay < ActiveRecord::Base
  attr_accessible :played_at_millisecond
  belongs_to :sample
end
