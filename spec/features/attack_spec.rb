feature 'Attcking' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "attacked"
  end

  scenario 'Player 1 deals damage to player 2' do
    sign_in_and_play
    click_link "Attack"
    click_link "OK"
    expect(page).not_to have_content "Matt: 60HP"
    expect(page).to have_content "Matt: 50HP"
  end
end
