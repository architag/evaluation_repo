class Vehicle
  def initialize(name, price)
    @name = name
    @price = price
  end
  def to_s
    "Name: #{@name} \nPrice: #{@price}"
  end
end

class Bike < Vehicle
  def initialize(name, price, dealer, percent_price_increase)
    super(name, price)
    @dealer = dealer
    @percent_price_increase = percent_price_increase
  end
  def price_increase
    @price *= 1 + (@percent_price_increase/100)
  end
  def printDetails
    puts "Bike Name: #{@name}"
    puts "Bike Price: #{@price}"
    puts "Bike Dealer: #{@dealer}"
    price_increase()
    puts "\nAfter #{@percent_price_increase} percent hike in price:"
    puts "Bike Name: #{@name}"
    puts "Bike Price: #{@price}"
    puts "Bike Dealer: #{@dealer}"
  end
end

puts "Please provide an input"
input = gets

details = input.scan(/"[A-Za-z]+[ [A-Za-z]+]+"|[0-9]+[.[0-9]+]*|[A-Za-z]+/)
data = Array.new()
details.each do |var|
  var.gsub!("\"", "")
  data << var
end

bike = Bike.new(data[0], Float(data[1]), data[2], Float(data[3]))
bike.printDetails()

