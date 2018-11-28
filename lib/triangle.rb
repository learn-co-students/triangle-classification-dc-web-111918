class Triangle
  attr_reader :a, :b, :c

  def initialize(a,b,c)
    @a, @b, @c = a, b, c
  end

  def kind
    triangle_illegal?(a,b,c)
    if a == b && b == c && a == c
      return :equilateral
    elsif (a == b && b != c) || (a == c && a != b)  || (b == c && a != c )
      return :isosceles
    elsif a !=b && b !=c && a != c
      return :scalene
    end
  end

  def triangle_illegal?(a,b,c)
    legal = ((a+b > c) && (a+c > b) && (c+b > a)) && (a > 0 && b > 0 && c > 0)
    if !legal
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
