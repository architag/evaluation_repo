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
  raise "Firstname cannot be blank" if !firstname
  raise "Lastname cannot be blank" if !lastname
  raise "Firstname must start with an uppercase letter" unless ('A'..'Z').include?firstname[0]
  person = Name.new(firstname, lastname)
  puts person 
rescue Exception => e
  puts e.message
end
