require_relative '../../lib/modules/deploy_ships'

class Deploy; include DeployShips; end

describe Deploy do
  let(:deploy) { Deploy.new   }
  let(:ship  ) { double :ship }

  it "should select a direction for a ship" do
    expect(deploy.direction).to satisfy {|value| value == 'horizontal' || value == 'vertical'}
  end

  it "should pick a random key from the grid hash" do
    expect(deploy.select_a_key).to match(/^[A-J]{1}\d{1,2}/)
  end

  it "should not allow a ship to spill outside a row" do
    allow(ship).to receive(:size).and_return(4)
    expect(deploy.check_row_space(ship,"C8")).to be false
  end

  it "place_on_row should return an array of keys" do
    allow(ship).to receive(:size).and_return(4)
    allow(deploy.select_a_key).to receive(:size).and_return(4)
    expect(deploy.place_on_row(ship)).to be_a(Array)
  end

  it "place_on_row should be a sequence of neighbouring keys" do
    allow(ship).to receive(:size).and_return(4)
    allow(deploy.select_a_key).to receive(:size).and_return(4)
    location = deploy.place_on_row(ship)
    expect(location[1]).to eq(location[0].next) 
  end

  it "place_on_column should return sequential letters" do
    allow(ship).to receive(:size).and_return(4)
    allow(deploy).to receive(:select_a_key).and_return("D8")
    location = deploy.place_on_column(ship)
    expect(location[1]).to eq("E8")   
  end

  it "check_column_space should return false if the ship would spill off a column" do
    allow(ship).to receive(:size).and_return(4)
    allow(deploy.select_a_key).to receive(:size).and_return(4)
    expect(deploy.check_column_space(ship,"H4")).to be false 
  end  

end