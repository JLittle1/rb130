class Octal
  def initialize(num)
    @value = num.to_i
    @value = 0 if num =~ /[89\D]/
  end

  def to_decimal
    result = 0
    @value.digits.each_with_index { |digit, idx| result += digit * (8**idx) }
    result
  end
end
