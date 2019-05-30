feature 'EnterPlayers' do
  scenario 'should display names entered in a form' do
    sign_in_and_play
    expect(page).to have_content('Ed vs. Mel')
  end
end
