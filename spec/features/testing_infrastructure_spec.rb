require './app.rb'
require 'spec_helper'

describe MyApp do
  describe 'the homepage', type: :feature do
    it 'should display particular message on homepage' do
      visit '/'
      expect(page).to have_content 'Testing infrastructure working!'
    end

    it 'should display names entered in a form' do
      visit '/'
      fill_in('Player_1', with: 'Ed')
      fill_in('Player_2', with: 'Mel')
      click_on 'Start battle!'
      expect(page).to have_content('Ed vs. Mel')
    end
  end
end