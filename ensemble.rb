big_band = [/alto\s(?:.*\s)?1/, /alto\s(?:.*\s)?2/, /tenor\s(?:.*\s)?1/, /tenor\s(?:.*\s)?2/, /bari\s(?:.*\s)?sax/, /trumpet\s(?:.*\s)?1/, /trumpet\s(?:.*\s)?2/, /trumpet\s(?:.*\s)?3/, /trumpet\s(?:.*\s)?4/, /bone\s(?:.*\s)?1/,/bone\s(?:.*\s)?2/, /bone\s(?:.*\s)?3/, /bone\s(?:.*\s)?4/, /guitar/, /piano/, /bass/, /drums/ ]

new_chart = []

until big_band == []


puts "Think of all parts in a jazz big band."
print ">>"

sax_part = gets.chomp.downcase




# index = big_band.find_index { |regex| sax_part.match(regex) }


# p big_band.delete(index)

big_band.delete_if { |regex| sax_part.match(regex) }

big_band.append {|regex| sax_part.!~ /regex/}

new_chart << sax_part
end

puts "You got all the parts."

p big_band
p new_chart



# if sax_part.split & big_band[0].split == big_band[0].split

# p big_band.delete_if{ |s| s == big_band[0]}
# puts "Damn, you're lucky"

# end
# end
# puts "You got all parts."
# new_chart << sax_part.gsub(/\S+/, &:capitalize)
