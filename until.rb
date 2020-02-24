saxophone_section = ["alto 1", "alto 2", "tenor 1", "tenor 2", "bari sax"]

until saxophone_section == []

puts "Think of sax parts in a jazz big band."
print ">>"

sax_part = gets.chomp.downcase


# this is the part that is confusing me.  Trying to figure out the method in which
# a string in the above array matches an input, whether "alto saxophone 1" or "Eb alto saxophone 1"
# is typed in. ("alto 1" is found in both)


# I am thinking that this bottom parts one could be used? or not?
# parts = saxophone_section.map {|sax| sax.gsub(/\s+/m, ' ').strip.split(" ")}


# if saxophone_section.include?(sax_part) == true

# p saxophone_section.delete_if{ |s| s == sax_part}
# puts "Damn, you're lucky"
# else
#   puts "Woops! Try again."
# end
# end
# puts "You got all parts."




if sax_part.split & saxophone_section[0].split == saxophone_section[0].split

p saxophone_section.delete_if{ |s| s == saxophone_section[0]}
puts "Damn, you're lucky"
else
  puts "Woops! Try again."
end
end
puts "You got all parts."
