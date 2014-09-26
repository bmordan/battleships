require_relative '../../lib/modules/deploy_ships.rb'

class Deploy; include DeployShips; end

describe Deploy do
  
  let(:deploy    ) { Deploy.new                 }
  let(:ship      ) { double :ship, location: [] }
  let(:ships     ) { double :ships              }
  let(:coordinate) { double :coordinate         }
  let(:location  ) { double :location           }

  it "can check a ships location" do
    allow(ship).to receive(:size).and_return(3)
    allow(ships).to receive(:flatten)
    expect(deploy.place_ship(ship)).to be_a(Array)
  end

  it "should check through each element in the array" do 
    allow(ship).to receive(:size).and_return(3)
    result = deploy.place_ship(ship)
    allow(ships).to receive(:flatten)
    expect( result.any? {|i| i.is_a?(String) }).to be true 
  end

end
