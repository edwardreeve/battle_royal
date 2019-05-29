require './app.rb'
require 'spec_helper'

feature 'Names entered into form' do
  scenario 'entering names' do
    visit '/'
    fill_in('Player_1', with: 'Ed')
    fill_in('Player_2', with: 'Mel')
    click_on 'Start battle!'
    expect(page).to have_content('Ed vs. Mel')
  end
end
