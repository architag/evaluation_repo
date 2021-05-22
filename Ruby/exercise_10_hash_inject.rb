class Array
  def createHash
    occurence = Hash.new { |hash, key| hash[key] = []}
    self.each { |var| occurence[var.length] << var }
    occurence
  end
end

def hashInject(occurence)
  groupHash = occurence.inject({}) do |mem, (key,val)|
    if key%2 == 1
      mem["odd"] ||= []
      mem["odd"] << val
    else
      mem["even"] ||= []
      mem["even"] << val
    end
    mem
  end
end

input = ARGV[0].dup
arr = Array.new()

input.gsub!(/\[|\]|"|'/, "")
input.split(',').each do |var|
  arr << var
end

output = hashInject(arr.createHash())
puts output
