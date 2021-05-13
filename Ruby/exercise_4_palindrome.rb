class String
  def palindrome?
    self == self.reverse
  end
end

input = ARGV[0]
while !input || input.length == 0
  puts "Please provide an input"
  input = gets
  input.gsub!("\n", "")
end

if input.palindrome?
  puts "Input string is a Palindrome"
else
  puts "Input string is not a Palindrome"
end
