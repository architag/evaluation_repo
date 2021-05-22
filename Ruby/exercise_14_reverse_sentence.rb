puts "Please provide an input"
input = gets

words = input.split(' ')
words.reverse!
output = words.join(' ')

p output
