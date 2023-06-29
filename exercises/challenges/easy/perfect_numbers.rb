class PerfectNumber
  def self.classify(number)
    raise StandardErrror if number <= 0
    aliquot_sum = 0
    (1...number).each do |divisor|
      aliquot_sum += divisor if number % divisor == 0
    end
    case aliquot_sum
    when 0...number then 'deficient'
    when number then 'perfect'
    else 'abundant'
    end
  end
end
