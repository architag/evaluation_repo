class Interest
  attr_accessor :principal, :time

  def initialize
    yield self
  end

  def calc_difference
    rate = 0.1
    comp = (@principal*(1+rate)**@time)
    si = (@principal*(1+rate*@time))
    diff = (comp - si).round(2)
    diff
  end
end

puts "Please provide an input"
input = gets
pr, t = input.split(" ").map { |var| var.to_f }
obj = Interest.new do |var|
  var.principal = pr
  var.time = t
end

puts obj.calc_difference
