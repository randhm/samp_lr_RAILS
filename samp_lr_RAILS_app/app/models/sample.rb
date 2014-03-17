class Sample < ActiveRecord::Base
  attr_accessible :key_mapped_to, :name, :url
  belongs_to :sample_pack
  has_many :sample_plays
end
