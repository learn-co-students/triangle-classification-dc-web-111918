class Triangle
  attr_reader :a, :b, :c
  
  def initialize(side1, side2, side3)
    @a = side1
    @b = side2
    @c = side3
  end 
  
  def kind 
    if a + b > c && a + c > b && b + c > a && a > 0 && b > 0 && c > 0 
      if a == b && b == c 
        :equilateral
      elsif a == b || b == c || a == c
        :isosceles 
      else 
        :scalene
      end
    else 
      raise TriangleError
    end
  end 
  
  class TriangleError < RangeError
  end
end
