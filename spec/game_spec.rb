require 'game'

describe Game do
  it 'should damage the opponent when attacked' do
    loser = double('Player')
    expect(loser).to receive(:damage)
    subject.attack(loser)
  end
end
