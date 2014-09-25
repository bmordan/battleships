class Ship

  attr_accessor :belongs_to

  def location
    @location ||= []
  end

end