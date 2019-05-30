# require './app.rb'
# require 'spec_helper'

feature 'Homepage' do
  scenario 'should display particular message on homepage' do
    visit '/'
    expect(page).to have_content 'BATTLE ROYALE!'
  end
end
