def checkPrime(n)
  3.upto(n**0.5) {|var| return false if n%var == 0 }
  true
end

puts "Please provide an input"
input = Integer(gets)
primes = Array.new()

primes << 2 if input>1
3.step(input, 2) { |num| primes << num if checkPrime(num) }
p primes
