require 'board'

describe Board do 

	let(:board) {Board.new}
	let(:coordinate) {double :coordinate}

	it "should have hash for coordinates" do
		expect(board.grid).class == hash
	end

	it "should have coordinates that correspond to squares" do
		expect(board.grid[coordinate]).class == :square
	end

	it "should accept shots" do 
		allow(board.grid[coordinate]).to receive(:shot?)
		allow(board.grid[coordinate]).to receive(:occupied?)
		expect(board.grid[coordinate]).to receive(:shot!)
		board.shot(coordinate)
	end

	it "should not allow players to shoot same square twice" do
		allow(board.grid[coordinate]).to receive(:shot?).and_return true
		expect(lambda {board.shot(coordinate)}).to raise_error(RuntimeError)
	end

	it "should accept ship coordinates" do
		expect(board.grid[coordinate]).to receive(:occupy)
		board.set_ship_coordinate(coordinate)
	end

end