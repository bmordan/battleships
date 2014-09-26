require 'ship'

describe Ship do
  
  let(:ship) {Ship.new}
  let(:player) {double :player}

  it "should have a position on the board (array of coordinates)" do
    expect(ship.location).to be_a(Array)
  end

  it "should belong to a player" do
    ship.belongs_to = "Bob"
    expect(ship.belongs_to).to eq("Bob")
  end

  it "should have a size" do
    ship.size = 3
    expect(ship.size).to eq(3)
  end

  it "can be initialized with a type of ship" do
    battleship = Ship.battleship
    expect(battleship.type).to eq("Battleship")
  end

  it "and size" do
    patrol = Ship.patrol
    expect(patrol.type).to eq("Patrol-Boat")
  end

  # Aircraft_Carrier = 5
  # Battleship = 4
  # Submarine = 3
  # Destroyer = 2
  # Patrol_Boat = 1

end