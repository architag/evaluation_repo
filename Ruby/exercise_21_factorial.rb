def factorial(n)
  if n==0
    return 1
  end
  (1..n).inject(:*)
end

begin
  input = Integer(ARGV[0])
  raise "Negative number entered" if input < 0
  p factorial(input)
rescue Exception => e  
  puts e.message
end

