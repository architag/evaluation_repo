def factorial(n)
  if n==0
    return 1
  end
  (1..n).inject(:*)
end

input = Integer(ARGV[0])
p factorial(input)

