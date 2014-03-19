class SamplePlay < ActiveRecord::Base
  attr_accessible :played_at_millisecond, :sample_id, :song_id
  belongs_to :sample

  validate :played_at_millisecond, presence: true
end
