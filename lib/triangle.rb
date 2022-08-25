
class Triangle
  # write code here
attr_accessor :base, :height, :hypotenuse

  def initialize(base, height, hypotenuse)
      @base=base
      @height=height
      @hypotenuse=hypotenuse
  end

  def kind
    
  if @base > 0 && @height > 0 &&  @hypotenuse > 0 && @base+@height >  @hypotenuse && @height +  @hypotenuse > @base && @base +  @hypotenuse > @height
    if self.base == self.height && self.height == self.hypotenuse
      triangle = :equilateral
    elsif self.base == self.height || self.height == self.hypotenuse || self.hypotenuse == self.base
      triangle = :isosceles
    else
      triangle = :scalene
    end
  else 
    raise TriangleError
  end
  triangle
 end
  


class TriangleError < StandardError
  def message
    puts "This is an invalid triangle because the sides are invalid"
 end
end

end