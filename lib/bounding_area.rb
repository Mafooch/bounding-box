class BoundingArea
  def initialize(bounding_box_array)
    @bounding_box_array = bounding_box_array
  end
  def contains_point?(x, y)
    @bounding_box_array.any? do |bounding_box|
      x >= bounding_box.left && x <= bounding_box.right && y >= bounding_box.bottom && y <= bounding_box.top
    end
  end
end
