require 'player'

describe Player do
  let(:ed) { Player.new('Ed') }
  let(:loser) { Player.new('LOSER') }

  it 'should return its name' do
    expect(ed.name).to eq('Ed')
  end

  it 'should lose hit points when damaged' do
    expect { loser.damage }.to change { loser.hit_points }.by(-Player::DEFAULT_DAMAGE)
  end
end
