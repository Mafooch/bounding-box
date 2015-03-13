class BoundingBox
  def initialize(left, bottom, distance_from_left, distance_from_bottom)
    @left = left.to_f
    @bottom = bottom.to_f
    @right = (left + distance_from_left).to_f
    @top = (bottom + distance_from_bottom).to_f
  end

  def left
    @left
  end

  def bottom
    @bottom
  end

  def right
    @right
  end

  def top
    @top
  end

  def width
    @right - @left
  end

  def height
    @top - @bottom
  end

  def contains_point?(x, y)
    x >= @left && x <= @right && y >= @bottom && y <= @top
  end

end
