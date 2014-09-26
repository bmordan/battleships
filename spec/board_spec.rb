require 'board'

describe Board do 

	let(:board) {Board.new}
	let(:coordinate) {double :coordinate}

	it "should have a grid hash" do
		expect(board.grid).class == hash
	end

	it "should have coordinates as keys to square values in the grid hash" do
		expect(board.grid[coordinate]).class == :square
	end

	it "should shoot squares" do 
		allow(board.grid[coordinate]).to receive(:shot?)
		allow(board.grid[coordinate]).to receive(:occupied?)
		expect(board.grid[coordinate]).to receive(:shoot!)
		board.shoot(coordinate)
	end

	it "should not allow players to shoot same square twice" do
		allow(board.grid[coordinate]).to receive(:shot?).and_return true
		expect(lambda {board.shoot(coordinate)}).to raise_error(RuntimeError)
	end

	it "should call occupy method on squares based on ship coordinates" do
		allow(board.grid[coordinate]).to receive(:occupied?)
		expect(board.grid[coordinate]).to receive(:occupy)
		board.set_ship_coordinate(coordinate)
	end

	it "should make squares be occupied after receiving ship coordinates" do
		expect(board.grid[coordinate]).to receive(:occupied?).and_return true
		board.set_ship_coordinate(coordinate)
	end

	it "should not allow one square to be occupied more than once" do
		allow(board.grid[coordinate]).to receive(:occupied?).and_return true
		expect(lambda {board.set_ship_coordinate(coordinate)}).to raise_error(RuntimeError)
	end

end