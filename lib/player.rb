require_relative './modules/deploy_ships'

class Player

  include DeployShips #'position_ship(ship)' will return ["E3","E4","E5"]

  attr_accessor :enemy
  attr_accessor :name

  def initialize(options = {})
    @name = options.fetch( :name, @name = "Other" )
  end
  
  def take_shot(coordinate)
    raise "given me a fkin coordinate!" if coordinate.nil?
    coordinate
  end

  def ships
    @ships ||= []
  end

  def grid
    @grid ||= {}
  end

  def show_grid
    show_this = ''
  end

end
