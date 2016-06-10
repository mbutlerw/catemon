

def sign_in_and_play
  visit('/')
  fill_in("multi-player_1", with: "Steve")
  fill_in("multi-player_2", with: "Carlos")
  click_button("submit")
end

def attack_and_confirm
  click_button "Attack"
  click_button "OK"
end
