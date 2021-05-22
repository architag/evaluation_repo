class Account
  @@account_no = 0;
  def initialize(name, balance)
    @@account_no += 1
    @account_no = @@account_no
    @name = name
    @balance = balance
  end
  def deposit(amount)
    @balance += amount
  end
  def withdraw(amount)
    @balance -= amount
  end
  def to_s
    "Account Number: #{@account_no} \nAccount Holder Name: #{@name} \nAccount Balance: #{@balance}"
  end
end

puts "Please provide an input"
input = gets
data = Array.new()
details, amt = input.split(' transfer:')
accounts = details.scan(/[A-Za-z]+:[0-9]+|"[A-Za-z]+ [A-Za-z]+":[0-9]+/)
accounts.each do |var|
  var.gsub!("\"", "")
  data << var.split(':')
end

acc_1 = Account.new(data[0][0], Integer(data[0][1]))
acc_2 = Account.new(data[1][0], Integer(data[1][1]))
acc_1.withdraw(Integer(amt))
acc_2.deposit(Integer(amt))

puts acc_1
print "\n"
puts acc_2
