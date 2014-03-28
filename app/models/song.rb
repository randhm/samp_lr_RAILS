class Song < ActiveRecord::Base
  attr_accessible :name
  belongs_to :user
  has_many :sample_plays, order: "sample_plays.played_at_millisecond ASC"

  validates :user_id, presence: true

end
