class BoundingBox
  attr_reader :left, :bottom, :right, :top

  def initialize(left, bottom, distance_from_left, distance_from_bottom)
    @left = left.to_f
    @bottom = bottom.to_f
    @right = (left + distance_from_left).to_f
    @top = (bottom + distance_from_bottom).to_f
  end

# referring to the method that returns left, right, etc i.e. attr_reader
# instead of referring to the instance variables themselves. both work
  def width
    right - left
  end

  def height
    top - bottom
  end

  def contains_point?(x, y)
    x >= @left && x <= @right && y >= @bottom && y <= @top
  end
end
