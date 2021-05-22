class Array
  def power(n)
    self.map! {|num| num**n}
  end
end

input = ARGV[0].dup
n = Integer(ARGV[1])
arr = Array.new()

input.gsub!(/\[|\]/, "")
input.split(',').each {|num| arr << Integer(num)}

arr.power(n)
p arr
