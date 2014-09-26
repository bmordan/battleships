require_relative './modules/deploy_ships'
require_relative './ship'

class Player

  include DeployShips # => 

  attr_accessor :enemy
  attr_accessor :name

  def initialize(name) #you have to initialize with a name Player.new("Bernard")
    @name = name
    @grid = Board.new
    [ Ship.aircraft,
      Ship.battleship,
      Ship.sub,
      Ship.destroyer,
      Ship.patrol
    ].each {|ship| ships << ship}
    @ships.each {|ship| place_ship(ship)}
    @ships.each {|ship| ship.belongs_to=@name}
  end
  
  def take_shot(coordinate)
    raise "given me a fkin coordinate!" if coordinate.nil?
    self.enemy.player_grid.shoot(coordinate)
  end

################ is this a module? #########
  
  def ships
    @ships ||= []
  end

  def show_ships
    all_ship_coordinates = []
    @ships.each {|ship| all_ship_coordinates << ship.location}
    all_ship_coordinates.flatten
  end

  def player_grid
    @grid
  end

  def show_grid
    show_this = ''
  end
################ is this a module? #########


  def hit(coordinate)
    self.enemy.ships.each do |ship| 
     ship.location.delete(coordinate) if ship.location.include?(coordinate)
    end
  end

end
