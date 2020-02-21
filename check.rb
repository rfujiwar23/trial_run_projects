require 'csv'
require_relative "parts_sort"



table = CSV.parse(File.read("parts.csv"), headers: true)

puts table[0]["Name"] +" " + "is" + " " + table[0]["Part"]

p table.by_col[1]



saxes = ["alto_1", "alto_2", "tenor_1", "tenor_2", "bari"]


instruments = []
puts "Type part name here : "
single_instrument = gets.chomp
part_name = single_instrument.downcase
instruments << part_name

until part_name == "done"
  puts "Type another part name or DONE to finish:"
  single_instrument = gets.chomp
  part_name = single_instrument.downcase
  instruments << part_name unless part_name == "done"
end

sorted_instruments = parts_sort(instruments)

# puts "You put the following instruments and parts: The chart has #{instruments.count} instruments: -
# #{sorted_instruments[0..-2].join(', ')} and #{sorted_instruments[-1]}"
new_instrument_list = []

check = instruments.map {|instrument| instrument.downcase.tr!(" ", "_")}


new_instrument_list << check

p new_instrument_list

puts saxes.any?{|sax| new_instrument_list.include?("sax")}
# if insert = true
#   new_instrument_list << check
# else insert = false
#   puts "it's not a sax section"
# end

# p new_instrument_list

# new_instrument_list << put in

# p new_instrument_list
# string = "alto"

# puts check.each_with_index {|check| check.include?("sax")}
# puts string
