require 'player'

describe Player do

  let(:coordinate) { double :coordinate }
  let(:board     ) { double :board      }
  let(:player    ) { Player.new         }

  it "should have a name" do
    expect(player).to respond_to(:name)
  end

  it "should be able to take a shot" do
    expect(player).to respond_to(:take_shot)
  end

  it "should raise an error if there is no coordinate provided" do
    expect(->(take_shot){}).to raise_error(ArgumentError)
  end

  # it "should check that the coordinate is actually a coordinate" do
  #   allow(board).to receive(:grid)
  #   expect(player.take_shot(coordinate)).to eq(true)
  # end

  it "should have a collection of ships" do
    expect(player.ships).to be_a(Array)
  end

  it "should have a grid" do
    expect(player.grid).to be_a(Hash)
  end

  it "should have an opponent" do
    player.enemy = "Bob"
    expect(player.enemy).to eq("Bob")
  end

  it "should have a default opponent called 'Other'" do
    new_no_name_set = Player.new
    expect(new_no_name_set.name).to eq("Other")
  end

end