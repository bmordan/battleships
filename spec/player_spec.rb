require 'player'

describe Player do

  let(:player) { Player.new }

  it "should have a set_ship method" do
    expect(player).to respond_to(:set_ships)
  end



end