require 'board'

describe Board do 

	let(:board) {Board.new}
	let(:square) {double :square}

	it "should have coordinates" do
		expect(board.coordinates).class == hash
	end

	it "should accept shots" do 
		expect(square).to receive(:accept_shot)
		board.shot(square)
	end

	it "should have coordinates that correspond to squares" do
		board.coordinates["A1"].class == square
	end
	
end