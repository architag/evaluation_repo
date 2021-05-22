class Array
  def createHash
    occurence = Hash.new { |hash, key| hash[key] = []}
    self.each { |var| occurence[var.length] << var }
    occurence.sort.to_h
  end
end

input = ARGV[0].dup
arr = Array.new()

input.gsub!(/\[|\]/, "")
input.split(',').each do |var|
  var.gsub!(/"|'/, "")
  arr << var
end

puts arr.createHash()

