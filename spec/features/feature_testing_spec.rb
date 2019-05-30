require './app.rb'
require 'spec_helper'

describe MyApp do
  describe 'the homepage', type: :feature do
    it 'should display particular message on homepage' do
      visit '/'
      expect(page).to have_content 'BATTLE ROYALE!'
    end

   
    
    it 'should show player 2\'s hit points' do
      sign_in_and_play
      expect(page).to have_content('Ed vs. Mel (100 Hit Points)')
    end
  end
end
