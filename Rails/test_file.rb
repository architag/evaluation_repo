class TryMetaProgramming
  attr_accessor :var1, :var2

  def initialize(var1, var2)
    @var1 = var1
    @var2 = var2
  end

  def method_missing(method, *args, &block)
    if method.to_s == "sum"
      puts "creating method \"#{method}\""
      self.class.send(:define_method, method) do 
        puts "Sum of \"#{self.var1}\" and \"#{self.var2}\" is \"#{self.var1 + self.var2}\""
      end
      send(method)
    else
      puts "method \"#{method}\" is missing"
    end
  end
end

t1 = TryMetaProgramming.new("archit", "agrawal")
t2 = TryMetaProgramming.new(1, 2)
t3 = TryMetaProgramming.new("abcd", "efgh")

t1.test_method
t2.new_method(456)
t1.sum
t2.sum
t3.sum
