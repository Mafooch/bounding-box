class BoundingArea
  def initialize(bounding_box_array)
    @bounding_box_array = bounding_box_array
  end
  
  def contains_point?(x, y)
    @bounding_box_array.any? do |bounding_box|
      bounding_box.contains_point?(x, y)
    end
  end
end
