# def match(line)
#   s = line.length
#   if s > 1 && s < 20 && line.match(/\w/)
#     puts "Hello #{line}!"
#   end

# end

# puts match('world')
# puts match('track')
# puts match('abracatabra')
# puts match('TUTORIAL')
# puts match('090909878687597597659765222000000')

# lines = ["1234", "awesome", "090909878687597597659765222000000000"]

# def word(lines)
#   lines.each_index do |word|
#     if word.length > 1 && word.length < 20 && word.match(/\w/)
#     puts "Hello #{lines}!"
#   end
#   end
# end

# word(lines)

def check(phrase)
  # if phrase.length > 1 && phrase.length < 9
  phrase.each_with_index do |word|
    if word.length > 1 && word.length < 20 && word.match(/\w/)
    puts "Hello, #{word}! (no. of char #{word.length}"
  end
  end
end

check(["handsome", "Beautiful", "limabean", "1909090975445644567th"])

def main(lines)
  # このコードは標準入力と標準出力を用いたサンプルコードです。
  # このコードは好きなように編集・削除してもらって構いません。
  # ---
  # This is a sample code to use stdin and stdout.
  # Edit and remove this code as you like.

  lines.each_index do |i|
    word = lines[i]
    if word.length > 1 && word.length <= 20
    puts "#{i + 1}: #{word}"
  end
  end
end

main(["google", "yahoo", "stackoverflow", "worldwideweb"])
