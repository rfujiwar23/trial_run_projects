# Put simplified instrument name into a string (Alto 1, Alto 2, Trumpet 1, Trombone 2, etc)
string = "Alto 1"

# Then split the string, removing the space
split_str = string.gsub(/\s+/m, ' ').strip.split(" ")

# puts string.include?("Alto") || string.include?("Sax")

#Ask for the part name, and save the input as a string_check
puts "Put in a part name:"
print ">>"
string_check = gets.chomp



# split_str = string_check.gsub(/\s+/m, ' ').strip.split(" ")

# show the input name, string_check
# puts string_check

# show the split string
puts split_str

puts string_check.include?(split_str[0]) && string.include?(split_str[1])
