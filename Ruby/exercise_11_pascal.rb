def fact(n)
  if n==0
    return 1
  end
  num = 1.upto(n).inject(:*)
end

def pascal(n) 
  for k in 0..n
    yield fact(n)/(fact(k)*fact(n-k))
  end
end

puts "Please provide an input"
num = Integer(gets)

if num > 0
  0.upto(num-1) do |row|
    pascal(row) {|var| print var, " "}
    print "\n"
  end
end
