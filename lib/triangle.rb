class Triangle
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def triangle_tracker
    if @side1 == @side2 && @side1 == @side3
     triangle = "Equilateral"
   elsif @side1 == @side2 && @side1 != @side3
     triangle = "Isosceles"
   elsif @side1 != @side2 && @side2 == @side3
     triangle  = "Isosceles"
   else
     triangle = "Scalene"
   end
   triangle
  end
end
