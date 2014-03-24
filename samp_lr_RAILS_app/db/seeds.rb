# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

kit = SamplePack.create!(name: 'kit1')
samples = ['kit1_crash1', 'kit1_crash2', 'kit1_crash3', 'kit1_crash4', 'kit1_crash5', 'kit1_crash6', 'kit1_crash7', 'kit1_hhc1', 'kit1_hhc2', 'kit1_hhc3', 'kit1_hhc4', 'kit1_hho1', 'kit1_hho2', 'kit1_hho3', 'kit1_kick1', 'kit1_kick2', 'kit1_kick3', 'kit1_sdst1', 'kit1_sdst2', 'kit1_snr1', 'kit1_snr2', 'kit1_snr3', 'kit1_snr4', 'kit1_tom1', 'kit1_tom2', 'kit1_tom3']
letters = ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M']
samples.each_with_index do |item, index|
  Sample.create! name: item, key_mapped_to: letters[index], sample_pack: kit
end


kit = SamplePack.create!(name: 'kit2')
samples = ['kit2_clap1', 'kit2_clap2', 'kit2_clap3', 'kit2_clap4', 'kit2_clap5', 'kit2_hhc1', 'kit2_hhc2', 'kit2_hhc3', 'kit2_hhc4', 'kit2_hhc5', 'kit2_hhc6', 'kit2_hho1', 'kit2_hho2', 'kit2_hho3', 'kit2_kick1', 'kit2_kick2', 'kit2_kick3', 'kit2_kick4', 'kit2_snr1', 'kit2_snr2', 'kit2_snr3', 'kit2_snr4', 'kit2_snr5', 'kit2_snr6', 'kit2_snr7', 'kit2_snr8']
letters = ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M']
samples.each_with_index do |item, index|
  Sample.create! name: item, key_mapped_to: letters[index], sample_pack: kit
end
