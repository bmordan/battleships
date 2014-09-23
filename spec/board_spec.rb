require 'board'

describe Board do 

	let(:board) {Board.new}
	let(:square) {double :square}

	it "should hold squares" do
		expect(board.squares).to eq([])
	end

	it "should accept shots" do 
		expect(square).to receive(:accept_shot)
		board.shot(square)
	end

	it "should have 1 coordinate that corresponds to 1 square" do
		
	end
	
end