class Triangle
  attr_reader :equilateral, :isosceles, :scalene

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if @side_a > 0 && @side_b > 0 && @side_c > 0
    end

    if @side_a == @side_b && @side_b == @side_c
      :equilateral
    elsif @side_a == @side_b || @side_b == @side_c || @side_a == @side_c
      :isosceles
    elsif @side_a + @side_b > @side_c || @side_a + @side_c > @side_b || @side_b + @side_c > @side_a
      :scalene

    end
    raise TriangleError
  end

  class TriangleError < StandardError

  end
end
