require './app.rb'
require 'spec_helper'

feature 'testing homepage message' do
  scenario 'should display particular message on homepage' do
    visit '/'
    expect(page).to have_content 'BATTLE ROYALE, BITCHES'
  end
end
