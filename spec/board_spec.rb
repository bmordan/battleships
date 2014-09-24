require 'board'

describe Board do 

	let(:board) {Board.new}
	let(:square) {double :square}

	it "should have hash for coordinates" do
		expect(board.grid).class == hash
	end

	it "should have coordinates that correspond to squares" do
		board.grid["A1"].class == square
	end

	it "should accept shots" do 
		allow(board.grid[square]).to receive(:shot?)
		allow(board.grid[square]).to receive(:occupied?)
		expect(board.grid[square]).to receive(:shot!)
		board.shot(square)
	end

	it "should not allow players to shoot same square twice" do
		allow(board.grid[square]).to receive(:shot?).and_return true
		expect(lambda {board.shot(square)}).to raise_error(RuntimeError)
	end
end