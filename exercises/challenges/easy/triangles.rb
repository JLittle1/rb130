class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort
    return unless @sides.first <= 0 || @sides.first(2).sum <= @sides.last
    raise ArgumentError
  end

  def kind
    case @sides.uniq.size
    when 1 then 'equilateral'
    when 2 then 'isosceles'
    when 3 then 'scalene'
    end
  end
end
