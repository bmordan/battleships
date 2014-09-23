require 'ship'

describe Ship do
  
  let(:ship) {Ship.new}

  it "should have a size" do
    expect(ship.size).to be_a(Fixnum)
  end
end