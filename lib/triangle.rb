class Triangle
  # write code here

  def kind
    if @a > 0 && @b > 0 && @c > 0 && @a + @b > @c && @a + @c > @b && @b + @c > @a
      if @a == @b && @b == @c
        return :equilateral
      elsif @a == @b || @b == @c || @a == @c
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end
end

class TriangleError < StandardError
 # triangle error code
end
