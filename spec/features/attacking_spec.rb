feature 'AttackPlayers' do
  scenario 'Player 2 can be attacked, confirmation shown' do
    sign_in_and_play
    click_button 'ATTACK!'
    expect(page).to have_content('VICIOUS STRIKE BY PLAYER 1')
  end
  
  scenario 'Once attacked, the players Hit Points decrease by 10' do
    sign_in_and_play
    click_button 'ATTACK!'
    expect(page).to have_content('90 Hit Points')
  end
end
