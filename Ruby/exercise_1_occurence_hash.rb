puts "Enter an input string : "
str = gets
chars = str.split('')
occurence = Hash.new(0)
chars.each do |var|
  if var =~ /[A-Za-z]/
    occurence[var] += 1
  end
end
puts occurence
