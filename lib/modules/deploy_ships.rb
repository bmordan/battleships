require_relative './deploy_ship'

module DeployShips

  include DeployShip # position_ship(ship) returns ["A1","A2","A3"]

  def place_ship(ship)
    location = position_ship(ship)
    if location.any? {|coordinate| show_ships.include?(coordinate)}
      place_ship(ship)
    else
      ship.location << location
    end
  end

end