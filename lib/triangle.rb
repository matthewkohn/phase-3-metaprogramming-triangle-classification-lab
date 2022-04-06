class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end

  def triangle_inequality?
    a + b > c && b + c > a && a + c > b
  end

  def sides_larger_than_zero?
    a > 0 && b > 0 && c > 0
  end

  def valid_triangle
    raise TriangleError unless triangle_inequality? && sides_larger_than_zero?
  end

  class TriangleError < StandardError
  end

end
