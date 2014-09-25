require 'ship'

describe Ship do
  
  let(:ship) {Ship.new}
  let(:player) {double :player}

  it "should have a position on the board (array of coordinates)" do
    expect(ship.location).to be_a(Array)
  end

  it "should belong to a player" do
    expect(ship.belongs_to).to eq(:player)
  end

  # it "should have a correct type (1 of a possible 5)" do
  # end


  # it "A ship cannot contain the same coordinate twice" do
  # end

  # it "Ships should not contain the same coordinate" do
  # end

  # it "Should create 5 ships per player when game starts" do
  # end

  # it "Aircraft_Carrier should be 5 squares in size" do
  # end

  # it "Battleship should be 4 squares in size" do

  # end

  # it "Submarine should be 3 squares in size" do
  # end

  # it "Destroyer should be 2 squares in size" do
  # end

  # it "Patrol_Boat should be 1 square in size" do
  # end  


  # Aircraft_Carrier = 5
  # Battleship = 4
  # Submarine = 3
  # Destroyer = 2
  # Patrol_Boat = 1

end