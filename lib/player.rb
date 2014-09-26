require_relative './modules/deploy_ships'
require_relative './ship'

class Player

  include DeployShips # => 

  attr_accessor :enemy
  attr_accessor :name

  def initialize(options = {})
    @name = options.fetch( :name, @name = "Other" )
    [ Ship.aircraft,
      Ship.battleship,
      Ship.sub,
      Ship.destroyer,
      Ship.patrol
    ].each {|ship| ships << ship}
  end
  
  def take_shot(coordinate)
    raise "given me a fkin coordinate!" if coordinate.nil?
    # board.shoot(coordinate)
  end

  def ships
    @ships ||= []
  end

  def player_grid
    @grid = Board.new
  end

  def show_grid
    show_this = ''
  end

  def hit(coordinate)
    self.enemy.ships.each do |ship| 
     ship.location.delete(coordinate) if ship.location.include?(coordinate)
    end
  end

end
