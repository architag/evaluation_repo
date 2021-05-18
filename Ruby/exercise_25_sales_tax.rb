sum = 0
details = Array.new

loop do
  print "Name of the product: "
  name = gets.chomp.capitalize
  print "Imported?: "
  imported = gets.chomp.capitalize
  print "Exempted from sales tax? "
  exempted = gets.chomp.capitalize
  print "Price: "
  price = gets.chomp.to_f
  price_after_tax = price
  price_after_tax *= 1.1 if exempted == "No"
  price_after_tax *= 1.05 if imported == "Yes"
  price = price.round
  price_after_tax = price_after_tax.round
  sum += price_after_tax
  details << [name, imported, exempted, price.to_s, price_after_tax.to_s]
  print "Do you want to add more items to your list(y/n): "
  more_input = gets.chomp
break if more_input == "n"
end

print "Name".ljust(15), "Imported".ljust(15), "Exempted".ljust(15), "Price".ljust(15), "Price After Tax".ljust(15), "\n"
(0...75).each { print "-" }
print "\n"
details.each { |val| print val[0].ljust(15), val[1].ljust(15), val[2].ljust(15), val[3].ljust(15), val[4].ljust(15), "\n" }
print "TOTAL: ".rjust(60), sum, "\n"
