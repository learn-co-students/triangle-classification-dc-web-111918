class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    invalid_triangle
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def invalid_triangle
      no_error = error = (a + b > c) && (a + c > b) && (b + c > a) && c> 0 && a> 0 && b> 0
     raise TriangleError if no_error == false
  end

  class TriangleError < StandardError
  end


end
