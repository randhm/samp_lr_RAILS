# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

kit = SamplePack.create!(name: 'Acoustic')
samples = ['kit1_crash1', 'kit1_crash2', 'kit1_crash3', 'kit1_crash4', 'kit1_crash5', 'kit1_crash6', 'kit1_crash7', 'kit1_hhc1', 'kit1_hhc2', 'kit1_hhc3', 'kit1_hhc4', 'kit1_hho1', 'kit1_hho2', 'kit1_hho3', 'kit1_kick1', 'kit1_kick2', 'kit1_kick3', 'kit1_sdst1', 'kit1_sdst2', 'kit1_snr1', 'kit1_snr2', 'kit1_snr3', 'kit1_snr4', 'kit1_tom1', 'kit1_tom2', 'kit1_tom3']
letters = ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M']
samples.each_with_index do |item, index|
  Sample.create! name: item, key_mapped_to: letters[index], sample_pack: kit
end


kit = SamplePack.create!(name: 'Basic Electro')
samples = ['kit2_clap1', 'kit2_clap2', 'kit2_clap3', 'kit2_clap4', 'kit2_clap5', 'kit2_hhc1', 'kit2_hhc2', 'kit2_hhc3', 'kit2_hhc4', 'kit2_hhc5', 'kit2_hhc6', 'kit2_hho1', 'kit2_hho2', 'kit2_hho3', 'kit2_kick1', 'kit2_kick2', 'kit2_kick3', 'kit2_kick4', 'kit2_snr1', 'kit2_snr2', 'kit2_snr3', 'kit2_snr4', 'kit2_snr5', 'kit2_snr6', 'kit2_snr7', 'kit2_snr8']
letters = ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M']
samples.each_with_index do |item, index|
  Sample.create! name: item, key_mapped_to: letters[index], sample_pack: kit
end


kit = SamplePack.create!(name: 'Analogue Techno')
samples = ['RD-LowStab', 'RD-SpaceRim', 'RD-SynthStab', 'RD-TechnoBigSnare', 'RD-TechnoClap2', 'RD-TechnoClap3', 'RD-TechnoClave1', 'RD-TechnoClosedHH', 'RD-TechnoCong1', 'RD-TechnoCong3', 'RD-TechnoCong4', 'RD-TechnoCowbell1', 'RD-TechnoHH1', 'RD-TechnoHH4', 'RD-TechnoKik3', 'RD-TechnoKik4', 'RD-TechnoOpenHH', 'RD-TechnoOpenHH2', 'RD-TechnoRimshot', 'RD-TechnoSnr2', 'RD-TechnoSnr4', 'RD-TechnoSyntheticHH', 'RD-TechnoTom1', 'RD-TechnoWBlock']
letters = ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M']
samples.each_with_index do |item, index|
  Sample.create! name: item, key_mapped_to: letters[index], sample_pack: kit
end


kit = SamplePack.create!(name: 'Hip Hop Heavy')
samples = ['DAT-HipHop-Kit4-Clap', 'DAT-HipHop-Kit4-ClosedHH2', 'DAT-HipHop-Kit4-CongaHit', 'DAT-HipHop-Kit4-CongaSlap', 'DAT-HipHop-Kit4-Crash', 'DAT-HipHop-Kit4-CrunkSlam', 'DAT-HipHop-Kit4-Fill1', 'DAT-HipHop-Kit4-Fill2', 'DAT-HipHop-Kit4-Hat1', 'DAT-HipHop-Kit4-HornGrowl', 'DAT-HipHop-Kit4-Jilted', 'DAT-HipHop-Kit4-Kick1', 'DAT-HipHop-Kit4-Kick2', 'DAT-HipHop-Kit4-MidTom', 'DAT-HipHop-Kit4-OpenHH', 'DAT-HipHop-Kit4-OpenHH2', 'DAT-HipHop-Kit4-PedalHH', 'DAT-HipHop-Kit4-PedalHH2', 'DAT-HipHop-Kit4-Rim1', 'DAT-HipHop-Kit4-Snr1', 'DAT-HipHop-Kit4-Snr2', 'DAT-HipHop-Kit4-WoodSnare']
letters = ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M']
samples.each_with_index do |item, index|
  Sample.create! name: item, key_mapped_to: letters[index], sample_pack: kit
end


kit = SamplePack.create!(name: 'Hip Hop Sly')
samples = ['DAT-HipHop2-ClavStab', 'DAT-HipHop2-CongaHit', 'DAT-HipHop2-CongaHit2', 'DAT-HipHop2-Cow', 'DAT-HipHop2-Hat1', 'DAT-HipHop2-Hat2', 'DAT-HipHop2-Kick1', 'DAT-HipHop2-Kick2', 'DAT-HipHop2-OpenHH', 'DAT-HipHop2-OpenHH2', 'DAT-HipHop2-PedalHH', 'DAT-HipHop2-Punch Fill Hi', 'DAT-HipHop2-Punch Fill Low', 'DAT-HipHop2-Punch Fill Mid', 'DAT-HipHop2-Rim', 'DAT-HipHop2-Snare', 'DAT-HipHop2-Snare2', 'DAT-HipHop2-Stab', 'DAT-HipHop2-SubBoom', 'DAT-HipHop2-Woodblock']
letters = ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M']
samples.each_with_index do |item, index|
  Sample.create! name: item, key_mapped_to: letters[index], sample_pack: kit
end


kit = SamplePack.create!(name: 'Hip Hop Tech')
samples = ['DAT-HipHop1-808Dread', 'DAT-HipHop1-Clap1', 'DAT-HipHop1-CongaWailer', 'DAT-HipHop1-Cow', 'DAT-HipHop1-Cow2', 'DAT-HipHop1-DreadBass', 'DAT-HipHop1-Hat1', 'DAT-HipHop1-Hat2', 'DAT-HipHop1-Hat3', 'DAT-HipHop1-HiConga', 'DAT-HipHop1-HiTom', 'DAT-HipHop1-LowTom', 'DAT-HipHop1-MidTom', 'DAT-HipHop1-OpenHHat1', 'DAT-HipHop1-OpenHHat2', 'DAT-HipHop1-Rim1', 'DAT-HipHop1-Snr1', 'DAT-HipHop1-Snr2', 'DAT-HipHop1-Stab', 'DAT-HipHop1-SuperKik']
letters = ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M']
samples.each_with_index do |item, index|
  Sample.create! name: item, key_mapped_to: letters[index], sample_pack: kit
end


kit = SamplePack.create!(name: 'Progressive House')
['DAT_congaverb', 'DAT_kickprogmain', 'DAT_prog_bass', 'RD-Prog-conga-1', 'RD-Prog-conga-2', 'RD-Prog-Cowbell', 'RD-Prog-Crash', 'RD-Prog-HatSnare', 'RD-Prog-HH1', 'RD-Prog-HH1-1', 'RD-Prog-HH2', 'RD-Prog-KICK2', 'RD-Prog-Lightom', 'RD-Prog-Lowtom', 'RD-Prog-Maraca', 'RD-Prog-PedalHH1', 'RD-Prog-Rimshot', 'RD-Prog-Snare2', 'RD-Prog-snaregate', 'RD-Prog-SnipHat1', 'RD-Prog-Tamborine', 'RD-Prog-tuna', 'RD-Prog-WaterRim-1', 'RD-Prog-Zap', 'RD-ProgClap1']
letters = ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M']
samples.each_with_index do |item, index|
  Sample.create! name: item, key_mapped_to: letters[index], sample_pack: kit
end
