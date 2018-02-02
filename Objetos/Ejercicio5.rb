class Car
  @@t_instances = 0
  @@q_instances = 0

  def self.inst_t
    @@t_instances += 1
  end

  def self.most_t
    @@t_instances
  end

  def self.inst_q
    @@q_instances += 1
  end

  def self.most_q
    @@q_instances
  end
end


class T
  def initialize
    Car.inst_t
  end
end

class Q
  def initialize
    Car.inst_q
  end
end

20.times do |i|
  T.new
end

25.times do |i|
  Q.new
end

puts Car.most_t
puts Car.most_q
