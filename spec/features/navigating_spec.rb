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

  scenario "User can go back after one game played " do
    sign_in_and_play
    click_link("Scissors")
    click_link("Next Round")
    expect(page).to have_text("Choose your weapon!")
  end

  scenario "When user submit 'Rock' and opponent has 'scissors' user wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    sign_in_and_play
    click_link("Rock")
    expect(page).to have_text "Dines wins"
  end

  scenario "When user submit 'Scissors' and opponent has 'Paper' user wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    sign_in_and_play
    click_link("Scissors")
    expect(page).to have_text "Dines wins"
  end

  scenario "When user submit 'Paper' and opponent has 'Rock' user wins" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    sign_in_and_play
    click_link("Paper")
    expect(page).to have_text "Dines wins"
  end

  scenario "When user submit 'Rock' and opponent has 'Paper' user looses" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    sign_in_and_play
    click_link("Rock")
    expect(page).to have_text "Master Gamer wins"
  end

  scenario "When user submit 'Paper' and opponent has 'Scissors' user looses" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    sign_in_and_play
    click_link("Paper")
    expect(page).to have_text "Master Gamer wins"
  end

  scenario "When user submit 'Scissors' and opponent has 'Rock' user looses" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    sign_in_and_play
    click_link("Scissors")
    expect(page).to have_text "Master Gamer wins"
  end

  scenario "When user the same as the opponent it is a draw" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    sign_in_and_play
    click_link("Rock")
    expect(page).to have_text "The game was a draw"
  end

  scenario "When I win twice I am the winner of the game" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    sign_in_and_play
    click_link("Rock")
    click_link("Next Round")
    click_link("Rock")
    expect(page).to have_text "Wow you are a profet"
  end

  scenario "When I loose twice I am the looser of the game" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    sign_in_and_play
    click_link("Paper")
    click_link("Next Round")
    click_link("Paper")
    expect(page).to have_text "That SUCKS Man"
  end
end
