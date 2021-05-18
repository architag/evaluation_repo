class FirstNameBlankError < StandardError
  def message
    "Firstname cannot be blank"
  end
end

class LastNameBlankError < StandardError
  def message
    "Lastname cannot be blank"
  end
end

class FirstNameUpercaseError < StandardError
  def message
    "Firstname must start with an uppercase letter"
  end
end

class Name
  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
  end
  def to_s
    "Your name is #{@firstname} #{@lastname}"
  end
end

puts "Please provide an input"
input = gets.chomp
input.gsub!("\"", "")

begin
  firstname, lastname = input.split(" ")
  raise FirstNameBlankError if !firstname
  raise LastNameBlankError if !lastname
  raise FirstNameUpercaseError unless ('A'..'Z').include?firstname[0]
  person = Name.new(firstname, lastname)
  puts person 
rescue Exception => e
  puts e.message
end
