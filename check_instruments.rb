# Put simplified instrument name into a string (Alto 1, Alto 2, Trumpet 1, Trombone 2, etc)
# string = "Alto 1"

# Then split the string, removing the space
# split_str = string.gsub(/\s+/m, ' ').strip.split(" ")

# puts string.include?("Alto") || string.include?("Sax")

#Ask for the part name, and save the input as a string_check
# puts "Put in a part name:"
# print ">>"
# string_check = gets.chomp



# split_str = string_check.gsub(/\s+/m, ' ').strip.split(" ")

# show the input name, string_check
# puts string_check

# show the split string
# puts split_str

# puts string_check.include?(split_str[0]) && string_check.include?(split_str[1])


#################################################################################

saxophone_section = ["Alto 1", "Alto 2", "Tenor 1", "Tenor 2", "Bari Sax"]


#until the saxophone_section is empty, do the loop.

#ask for the instrument (sax) with the part number
puts "Put in a sax part name: (ie: Alto Saxophone 1)"
print ">>"
saxophone = gets.chomp



# get the split string of the second string in the array "Alto 2"
saxophone_1 = saxophone_section[1].gsub(/\s+/m, ' ').strip.split(" ")

# check if the input string matches the "Alto 2" in the array
if saxophone.include?(saxophone_1[0])&&saxophone.include?(saxophone_1[1]) == true
   puts saxophone + " is in the array"
   p saxophone_section.delete_if{ |s| s == saxophone_1.join(" ")}
 else
  puts "try another instrument"
  # Go back to the top and try again.
 end



# check if the input string "slightly" matches any of the strings in the array

parts = saxophone_section.map {|sax| sax.gsub(/\s+/m, ' ').strip.split(" ")}

p parts
puts saxophone_section.count

#if it contains, then remove it, creating a new array

#loop this until every part has been recognized and removed

# puts saxophone_section["Alto 1"]

p saxophone_section.include?(saxophone_1)
