require './app'
require 'spec_helper'

RSpec.feature "RockPaperScissor", :type => :feature do
  scenario "User creates a new player profile" do
    sign_in_and_play
    expect(page).to have_text("Welcome Dines")
  end

  scenario "User can select 'rock'" do
    sign_in_and_play
    fill_in("choice", :with => "Rock")
    click_button("Play")
    expect(page).to have_text("You choose Rock")
  end
end
