require 'csv'



table = CSV.parse(File.read("parts.csv"), headers: true)

puts table[0]["Name"] +" " + "is" + " " + table[0]["Part"]

p table.by_col[1]
