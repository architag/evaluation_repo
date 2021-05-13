class String
  def charCount
    lower, upper, num, special = 0, 0, 0, 0
    self.split('').each do |ch|
      case ch
      when ('a'..'z')
        lower += 1
      when ('A'..'Z')
        upper += 1
      when ('0'..'9')
        num += 1
      else
        special += 1
      end
    end
    "Lowercase characters = #{lower} \nUppercase characters = #{upper} \nNumeric characters = #{num} \nSpecial characters = #{special}"
  end
end

puts "Please provide an input"
input = gets
input.gsub!("\n", "")
puts input.charCount()
