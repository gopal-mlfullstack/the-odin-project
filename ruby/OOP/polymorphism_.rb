# Same method different behavior 

class Circle 
  def area(radius)
    return 3.14 * radius**2
  end
end 

class Ractangle 
  def area(width, height)
    return width * height 
  end
end

def print_area(shape, *args)
  return shape.area(*args)
end

puts print_area(Circle.new, 5)
puts print_area(Ractangle.new, 10, 7)