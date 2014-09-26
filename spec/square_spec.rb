require 'square'

describe Square do 

	let(:square) {Square.new}
	let(:player) {double :player, :set => true}
	let(:ship) {double :ship}

	it "should not be occupied as a default" do
		expect(square).not_to be_occupied
	end

	it "should be able to be occupied" do
		square.occupy
		expect(square).to be_occupied
	end

	it "should not be shot at as a default" do
		expect(square).not_to be_shot
	end

	it "should be able to get shot at" do
		square.shoot!
		expect(square).to be_shot
	end

end