require './app'
require 'spec_helper'

RSpec.feature "RockPaperScissor", :type => :feature do
  scenario "User creates a new player profile" do
    sign_in_and_play
    expect(page).to have_text("Welcome Dines")
  end

  scenario "User can select 'rock'" do
    sign_in_and_play
    click_link("Rock")
    expect(page).to have_text("Dines selected Rock")
  end

  scenario "User can select 'paper'" do
    sign_in_and_play
    click_link("Paper")
    expect(page).to have_text("Dines selected Paper")
  end

  scenario "User can select 'scissors' " do
    sign_in_and_play
    click_link("Scissors")
    expect(page).to have_text("Dines selected Scissors")
  end
end
