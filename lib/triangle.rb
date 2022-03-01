class Triangle
  attr_accessor :a, :b, :c   
  def initialize(a,b,c)
    @a = a
    @b = b   
    @c = c 
    valid? 
  end
  def valid?
    if @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    end
    if ((@a+@b)<=@c) || ((@a+@c)<=@b) || ((@c+@b)<=@a)
      raise TriangleError
    end
  end
  def kind
    if (@a == @b && @b == @c)
      return :equilateral
    elsif ((@a == @b && @a != @c) || (@b == @c && @a != @c) || (@a == @c && @b != @c))
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
  end

end
