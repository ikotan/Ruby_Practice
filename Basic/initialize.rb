def area(x, y) x*y end
class Rect
  attr_reader :x, :y
  def initialize(x, y) @x, @y = x, y end

  def area() x*y end
end

p area(10,5)
p Rect.new(10,5).area
