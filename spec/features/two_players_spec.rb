require './app'
require 'spec_helper'

RSpec.feature "RockPaperScissor", :type => :feature do
  scenario "Should be able to play two players" do
    visit("/")
    fill_in("name", :with => "Dines")
    fill_in("name2", :with => "Isabel")
    click_button("Start game")
    expect(page).to have_text("Isabel")
  end
end
