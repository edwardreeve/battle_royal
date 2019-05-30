feature 'PlayerStats' do
  scenario 'Player 2 hit points visible' do
    sign_in_and_play
    expect(page).to have_content('Ed vs. Mel (100 Hit Points)')
  end
end
