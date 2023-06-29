class SumOfMultiples
  def self.to(number)
    SumOfMultiples.new(3, 5).to(number)
  end

  def initialize(*set)
    @set = set
  end

  def to(number)
    sum = 0
    (1...number).each do |multiple|
      sum += multiple if @set.any? { |factor| multiple % factor == 0 }
    end
    sum
  end
end
