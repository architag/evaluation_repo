puts "Enter an input string : "
str = gets
str.gsub!(/[AEIOUaeiou]/, '*')
puts str
