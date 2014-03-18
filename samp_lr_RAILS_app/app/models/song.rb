class Song < ActiveRecord::Base
  attr_accessible :name
  belongs_to :user
  has_many :sample_plays

  validates :user_id, presence: true

end
