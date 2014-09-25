class Ship

  attr_accessor :belongs_to
  attr_accessor :size

  def location
    @location ||= []
  end

end