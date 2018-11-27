class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if valid_triangle1? == true && valid_triangle2? == true
      puts true
    else
      raise TriangleError
    end

    if side1 == side2 && side2 == side3 && side1 == side3
      :equilateral
    elsif side1 != side2 && side2 != side3 && side1 != side3
      :scalene
    else
      :isosceles
    end
  end

  def valid_triangle1?
    side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
  end

  def valid_triangle2?
    side1.positive? && side2.positive? && side3.positive?
  end

  class TriangleError < StandardError
   # triangle error code
  end

end
