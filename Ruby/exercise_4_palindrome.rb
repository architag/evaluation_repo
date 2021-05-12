class String
  def palindrome?
    if self == self.reverse
      return true
    else
      return false
    end
  end
end

empty_string = true
while empty_string
  puts "Please provide an input"
  input = gets
  input.gsub!("\n", "")
  if input.length != 0
    empty_string = false
    if input.palindrome?
      puts "Input string is a Palindrome"
    else
      puts "Input string is not a Palindrome"
    end
  end
end
