# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

['kit1_crash1', 'kit1_crash2', 'kit1_crash3', 'kit1_crash4', 'kit1_crash5', 'kit1_crash6', 'kit1_crash7', 'kit1_hhc1', 'kit1_hhc2', 'kit1_hhc3', 'kit1_hhc4', 'kit1_hho1', 'kit1_hho2', 'kit1_hho3', 'kit1_kick1', 'kit1_kick2', 'kit1_kick3', 'kit1_sdst1', 'kit1_sdst2', 'kit1_snr1', 'kit1_snr2', 'kit1_snr3', 'kit1_snr4', 'kit1_tom1', 'kit1_tom2', 'kit1_tom3' ].each do |name|
  Sample.create name: name, key_mapped_to: "key_name", sample_pack_id: 1
end

