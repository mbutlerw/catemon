
feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Matt attacked Marco'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).not_to have_content 'Marco: 60HP'
    expect(page).to have_content 'Marco: 50HP'
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    click_button "Attack"
    expect(page).to have_content 'Marco attacked Matt'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    click_button "Attack"
    click_button "OK"
    expect(page).not_to have_content 'Matt: 60HP'
    expect(page).to have_content 'Matt: 50HP'
  end
end
