class T
  def method1
    rand(1..100)
  end
end

class Q < T
  attr_reader :var
  def initialize
    @var = method1
  end
end

x = Q.new
puts x.var
