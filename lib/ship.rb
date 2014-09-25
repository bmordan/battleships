class Ship

  attr_accessor :belongs_to
  attr_accessor :size
  attr_accessor :type

  DEFAULT = 'Battleship'

  def initialize(options = {})
    @type = options.fetch(:type, DEFAULT)
  end

  def location
    @location ||= []
  end

  def self.aircraft
    Ship.new(:type => "Aircraft")
  end

end