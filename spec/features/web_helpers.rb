def sign_in_and_play
  visit("/")
  fill_in("name", :with => "Dines")
  click_button("Start game")
end
