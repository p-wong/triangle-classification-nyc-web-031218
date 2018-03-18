require 'pry'

class Triangle
  # write code here

  def initialize(a, b, c)

    #Q: how do I separate this out from the initialize function?
    #
    if [a, b, c].any? { |x| x <= 0 }
      raise TriangleError
    end

    @sides = [a, b, c].sort
    if (@sides[0] + @sides[1]) <= @sides[2]
      raise TriangleError
    end

    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b or @a == @c or @b == @c
      :isosceles
    else
      :scalene
    end
  end
end

class TriangleError < StandardError
end
