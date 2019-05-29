require './app.rb'
require 'spec_helper'

describe MyApp do
  describe 'the homepage', type: :feature do

    it 'should display particular message on homepage' do
      visit '/'
      expect(page).to have_content 'Testing infrastructure working!'
    end

    it 'should display names entered in a form' do
      sign_in_and_play
      expect(page).to have_content('Ed vs. Mel')
    end
    
    it 'should show player 2\'s hit points' do
      sign_in_and_play
      expect(page).to have_content('Ed vs. Mel (100 Hit Points)')
    end
  end
end
