def highlightOccurence(str, word)
  str.gsub!(/#{word}/i) do |var|
    var = "(#{var})"
  end
  puts str
  puts "Total occurences found: #{str.scan(/#{word}/i).count}"
end

puts "Please provide an input"
input = gets.chomp
str, word = input.split(/" "/)
str = str[1...-1]
word = word.chop

highlightOccurence(str, word)
