require 'pry'

class Triangle
  
  attr_reader :kind
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3]
   
  end


  def kind
    if @sides.include?(0)
      raise TriangleError
    elsif @sides.any?{|num| num < 0}
      raise TriangleError
    elsif @sides.max >= @sides.sort.take(2).sum
      raise TriangleError
    end
   

    case @sides.uniq.length 
    when 1
      :equilateral
    when 2
      :isosceles
    when 3
      :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      "error"
    end
  end

end
