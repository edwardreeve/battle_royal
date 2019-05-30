def sign_in_and_play
  visit '/'
  fill_in('Player_1', with: 'Ed')
  fill_in('Player_2', with: 'Mel')
  click_on 'Start battle!'
end
