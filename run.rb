ensemble = {
:alto_1 => "Ron Burgundy",
:alto_2 => "Tony Soprano",
:tenor_1 => "Ashley Taylor",
:tenor_2 => "Lisa Simpson",
:bari => "Kumar Patel",
:trumpet_1 => "Joey Gladstone",
:trumpet_2 => "Donna Hotlips",
:trumpet_3 => "Fred Flintstone",
:trumpet_4 => "Moe Syzlak",
:trombone_1 => "Daffy Duck",
:trombone_2 => "Mister Tromboner",
:trombone_3 => "Steve Hale",
:trombone_4 => "Milhouse Van Houten",
:guitar => "Jesse Katsopolis",
:piano => "Harold Lee",
:bass => "Bugs Bunny",
:drums => "DJ Tanner" }

holman_parts = ["alto_sax1", "alto_sax2", "tenor_sax1", "tenor_sax2", "bari_sax", "trumpet_1", "trumpet_2", "trumpet_3", "trumpet_4", "trombone_1", "trombone_2", "trombone_3", "trombone_4", "electric_guitar", "piano", "acoustic_bass", "drumset"]

# need to find a possible javascript code to scan the pdf file for texts like the one above
davies_parts = ["alto_sax1", "alto_sax2", "tenor_sax1", "tenor_sax2", "bari_sax", "trumpet_1", "trumpet_2", "trumpet_3", "trumpet_4", "trumpet_5", "trombone_1", "trombone_2", "trombone_3", "trombone_4", "electric_guitar", "piano", "acoustic_bass", "drumset"]
# same as above, need to find a possible javascript code to scan the pdf file for texts like the one above


davies_parts = ["alto_sax1", "alto_sax2", "tenor_sax1", "tenor_sax2", "bari_sax", "trumpet_1", "trumpet_2", "trumpet_3", "trumpet_4", "trumpet_5", "trombone_1", "trombone_2", "trombone_3", "trombone_4", "electric_guitar", "piano", "acoustic_bass", "drumset"]

puts ensemble[:drums]

puts "Bill Holman's chart has #{holman_parts.count} parts"
puts "Tim Davies' chart has #{davies_parts.count} parts"

if ensemble.count > holman_parts.count
  puts "it seems like there are extra parts."
elsif ensemble.count < holman_parts.count
  puts "it looks like you do not have enough members"
  else
  puts "you can play the chart"
end

# create an array for saxophones, spelled out differently
saxophones = ["Eb Alto Saxophone 1", "Eb Alto Saxophone 2", "Bb Tenor Saxophone 1", "Bb Tenor Saxophone 2", "Eb Baritone Saxophone"]

p saxophones
# check if the strings in the array contain 'Sax'
result_saxes = saxophones.select {|saxophone| saxophone.include?("Sax")}
puts result_saxes

puts "-------------------------------------------------------------------"
# create an array for trumpets, spelled out differently
trumpets = ["Bb Trumpet 1", "Bb Trumpet 2", "Bb Trumpet 3", "Bb Trumpet 4"]

p trumpets
result_trumpets = trumpets.select {|trumpet| trumpet.include?("Trum")}
puts result_trumpets

puts "-------------------------------------------------------------------"
# create an array for trombones, spelled out differently
trombones = ["Trombone 1", "Trombone 2", "Trombone 3", "Bass Trombone"]

p trombones
result_trombones = trombones.select {|trombone| trombone.include?("bone")}
puts result_trombones

# February 20th 2020


