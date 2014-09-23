require 'player'
require 'stringio'

describe Player do

  let(:input ) { double :input }
  let(:player) { Player.new    }

  it "should have a set_ship method" do
    expect(player).to respond_to(:set_ships)
  end

  it "should be able to take a shot" do
    expect(player).to respond_to(:take_shot)
  end

  it "should be able to take a shot with an argument" do
    expect(player).to respond_to(:take_shot).with(input)
  end

end