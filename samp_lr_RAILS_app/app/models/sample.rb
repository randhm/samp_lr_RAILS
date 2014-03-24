class Sample < ActiveRecord::Base
  attr_accessible :key_mapped_to, :name, :sample_pack
  belongs_to :sample_pack
  has_many :sample_plays

  validates :key_mapped_to, presence: true
  validates :key_mapped_to, uniqueness: {scope: :sample_pack_id}
  validates :sample_pack_id, presence: true

end
