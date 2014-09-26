require_relative './deploy_ship'

module DeployShips

  include DeployShip # position_ship(ship) returns ["A1","A2","A3"]

  def place_ships(ships)
    ships.each {|ship| position_ship(ship)}
  end

end