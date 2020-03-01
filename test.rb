MORSE = {
  "A" => ".-",
  "B" => "-...",
  "C" => "-.-.",
  "D" => "-..",
  "E" => ".",
  "F" => "..-.",
  "G" => "--.",
  "H" => "....",
  "I" => "..",
  "J" => ".---",
  "K" => "-.-",
  "L" => ".-..",
  "M" => "--",
  "N" => "-.",
  "O" => "---",
  "P" => ".--.",
  "Q" => "--.-",
  "R" => ".-.",
  "S" => "...",
  "T" => "-",
  "U" => "..-",
  "V" => "...-",
  "W" => ".--",
  "X" => "-..-",
  "Y" => "-.--",
  "Z" => "--.."
}

def encode(text)
  words = text.gsub(/[,.!?']/, '').split(' ')
  words.map { |word| encode_word(word) }.join('|')
end

def encode_word(word)
  word.split('').map { |letter| MORSE[letter.upcase] }.join(' ')
end


def decode(morse_text)
  morse_text.split(" ").map { |morse_word| decode_word(morse_word) }.join("")
end

def decode_word(morse_word)
  morse_word.split(" ").map { |morse_letter| MORSE.key(morse_letter) }.join
end





puts encode_word("Hello World")
puts decode(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")

