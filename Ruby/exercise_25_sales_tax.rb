class Product
  @@total = 0

  def initialize(product_name, imported, exempted, price)
    @product_name = product_name
    @imported = imported
    @exempted = exempted
    @price = price
    @price_after_tax = price
    @price_after_tax *= 1.1 if exempted == "No"
    @price_after_tax *= 1.05 if imported == "Yes"
    @price = @price.round
    @price_after_tax = @price_after_tax.round
    @@total += @price_after_tax
  end

  def self.print_heading
    print "Name".ljust(15), "Imported".ljust(15), "Exempted".ljust(15), "Price".ljust(15), "Price After Tax".ljust(15), "\n"
    1.upto(75) { print "-" }
    print "\n"
  end

  def self.print_total
    print "TOTAL: ".rjust(60), @@total, "\n"
  end

  def print_details
    print @product_name.ljust(15), @imported.ljust(15), @exempted.ljust(15), @price.to_s.ljust(15), @price_after_tax.to_s.ljust(15), "\n"
  end
end

details = Array.new

loop do
  print "Name of the product: "
  product_name = gets.chomp.capitalize
  print "Imported?: "
  imported = gets.chomp.capitalize
  print "Exempted from sales tax? "
  exempted = gets.chomp.capitalize
  print "Price: "
  price = gets.chomp.to_f
  details << Product.new(product_name, imported, exempted, price)
  print "Do you want to add more items to your list(y/n): "
  more_input = gets.chomp
break if more_input != "y"
end

Product.print_heading
details.each { |obj| obj.print_details }
Product.print_total
