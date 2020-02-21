require 'csv'
require_relative "parts_sort"



table = CSV.parse(File.read("parts.csv"), headers: true)

puts table[0]["Name"] +" " + "is" + " " + table[0]["Part"]

p table.by_col[1]






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

puts "You put the following instruments and parts: The chart has #{instruments.count} instruments: -
#{sorted_instruments[0..-2].join(', ')} and #{sorted_instruments[-1]}"

p instruments
p table.count

if table.count > instruments.count
  puts "You are missing #{table.count - instruments.count} parts.  Continue?"
  elsif table.count < instruments.count
    puts "You have #{instruments.count - table.count} many parts."
  else
    puts "You have enough parts"
end

