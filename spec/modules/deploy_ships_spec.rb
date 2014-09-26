require_relative '../../lib/modules/deploy_ships.rb'

class Deploy; include DeployShips; end

describe Deploy do
  
  let(:deploy) { Deploy.new            }
  let(:ship  ) { double :ship, location: [] }
  let(:ships ) { double :ships              }

  it "can use position_ship module" do
    allow(ships).to receive(:each)
    expect(deploy.place_ships(ships)).to eq(5)
  end
end