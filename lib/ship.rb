require_relative './modules/deploy_ships'

class Ship

  include DeployShips

  #

  attr_accessor :belongs_to
  attr_accessor :size
  attr_accessor :type

  def initialize(options = {})
    @type = options[:type]
    @size = options[:size]
  end

  def location
    @location ||= []
  end

  def self.aircraft
    Ship.new(:type => "Aircraft-Carrier",:size => 5)
  end

  def self.battleship
    Ship.new(:type => "Battleship",:size => 4)
  end

  def self.sub
    Ship.new(:type => "Submarine",:size => 3)
  end

  def self.destroyer
    Ship.new(:type => "Destroyer",:size => 3)
  end

  def self.patrol
    Ship.new(:type => "Patrol-Boat",:size => 2)
  end

end