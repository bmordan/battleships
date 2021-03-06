require 'player'

describe Player do

  let(:coordinate) { double :coordinate }
  let(:board     ) { double :board      }
  let(:player    ) { Player.new         }
  let(:enemy_player) { Player.new }

  it "should have a name" do
    expect(player).to respond_to(:name)
  end

  it "should be able to take a shot" do
    expect(player).to respond_to(:take_shot)
  end

  it "should raise an error if there is no coordinate provided" do
    expect(->(take_shot){}).to raise_error(ArgumentError)
  end

  it "should have a collection of ships" do
    expect(player.ships).to be_a(Array)
  end

  it "should have a board grid" do
    expect(player.player_grid).to be_a(Board)
  end

  it "should have an opponent" do
    player.enemy = "Bob"
    expect(player.enemy).to eq("Bob")
  end

  it "should have a default opponent called 'Other'" do
    new_no_name_set = Player.new
    expect(new_no_name_set.name).to eq("Other")
  end

  it "should display the players board" do
    expect(player.show_grid).to eq('')
  end

  it "should be able to affect enemy player" do
    player.enemy = Player.new    
    expect(player.enemy.ships).class == Array
  end

  it "enemy should also have a board" do
    player.enemy = Player.new
    expect(player.enemy.player_grid).to be_a(Board)
  end

  it "should be able to shoot the enemy's board" do
    player.enemy = Player.new
    expect(player.enemy.player_grid).to receive(:shoot)
    player.take_shot(coordinate)
  end

  it "should share the ships in a flat array" do
    expect(player.show_ships).to be_a(Array)
  end

  it "should share the ships in a flat array" do
    expect(player.show_ships[0][0]).to be nil
  end


end