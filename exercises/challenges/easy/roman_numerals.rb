class RomanNumeral
  NUMERALS = { 'M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400, 'C' => 100,
               'XC' => 90, 'L' => 50, 'XL' => 40, 'X' => 10, 'IX' => 9,
               'V' => 5, 'IV' => 4, 'I' => 1 }

  def initialize(num)
    @value = num
  end

  # def to_roman
  #   result = ''
  #   remaining = @value
  #   NUMERALS.each do |char, int|
  #     multiplier, remaining = remaining.divmod(int)
  #     result << char * multiplier
  #   end
  #   result
  # end

  def to_roman
    result = ''
    remaining = @value
    numerals = NUMERALS.keys.sort { |a, b| NUMERALS[b] <=> NUMERALS[a] }
    numerals.each do |num|
      multiplier, remaining = remaining.divmod(NUMERALS[num])
      result << (num * multiplier)
    end
    result
  end
end
