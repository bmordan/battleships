require 'deploy_ships'

class Deploy; include DeployShips; end

describe Deploy do
  let(:deploy) {Deploy.new}

  it "should select a direction for a ship" do
    expect(deploy.direction).to satisfy {|value| value == 'horizontal' || value == 'vertical'}
  end
end

