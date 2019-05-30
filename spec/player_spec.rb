require 'player'

describe Player do
  it 'should return its name' do
    player = Player.new('Ed')
    puts player
    expect(player.name).to eq('Ed')
  end
end
