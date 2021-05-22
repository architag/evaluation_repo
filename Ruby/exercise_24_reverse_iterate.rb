class Array
  def reverse_iterate
    i = self.length - 1
    while i >= 0
      yield self[i]
      i -= 1
    end
  end
end

puts "Please provide an input"
input = gets.chomp
input.gsub!(/\[|\]|"|'|\s/, "")
arr = Array.new
input.split(",").each { |inp| arr << inp }

arr.reverse_iterate { |i| print "#{i} " }
print "\n"
