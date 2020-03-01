# ROMAN_TO_INT = {
#   "I" => 1,
#   "IV" => 4,
#   "V" => 5,
#   "IX" => 9,
#   "X" => 10,
#   "XL" => 40,
#   "L" => 50,
#   "XC" => 90,
#   "C" => 100,
#   "CD" => 400,
#   "D" => 500,
#   "CM" => 900,
#   "M" => 1000
# }
# puts "put roman number:"
# print ">>"
# roman_string = gets.chomp


#   number = 0
#   str = roman_string.dup
#   until str.size.zero?
#     last_two_characters = str.slice(-2, 2)
#     if ROMAN_TO_INT.key?(last_two_characters)
#       number += ROMAN_TO_INT[last_two_characters]
#       str.chop!
#     else
#       number += ROMAN_TO_INT[str.slice(-1)]
#     end
#     str.chop!
#   end
#   puts number


def in_words(int)
  numbers_in_letters = {
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen",
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one",
      0 => "zero"
    }
  string = ""
  numbers_in_letters.each do |num, name|
    if int == 0
      return string
    elsif int.to_s.length == 1 && int/num > 0
      return string + "#{name}"
    elsif int < 100 && int/num > 0
      return string + "#{name}" if int%num == 0
      return string + "#{name} " + in_words(int%num)
    elsif int/num > 0
      return string + in_words(int/num) + " #{name} " + in_words(int%num)
    end
  end
end



puts in_words(4)
puts in_words(27)
puts in_words(102)
puts in_words(380079)
# puts in_words(82102713.0)
