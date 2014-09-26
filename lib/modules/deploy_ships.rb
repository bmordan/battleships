require_relative './deploy_ship'

module DeployShips

  include DeployShip # position_ship(ship) returns ["A1","A2","A3"]

  # def place_ship(ship)
  #   position_here = position_ship(ship)
  #   check_location(position_here) ? place_ship(ship) : ship.location << position_here
  # end

  # def check_location(location)
  #   location.any? {|coordinate| ships.flatten.include?(coordinate)}
  # end

  def place_ship(ship)
    location = position_ship(ship)

  end  

end