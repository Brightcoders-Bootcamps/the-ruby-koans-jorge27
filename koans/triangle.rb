# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
	raise TriangleError if [a,b,c].min <= 0
	x, y, z = [a,b,c].sort
  raise TriangleError if x + y <= z
  
	if (a == b) && (b == c) && (a == c)
		:equilateral
	elsif ((a - b) == 0) || ((a - c) == 0) || ((b - c) == 0)
		:isosceles
	else
	:scalene
	end
  # WRITE THIS CODE
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
