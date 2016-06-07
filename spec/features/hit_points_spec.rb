feature 'View hit Points' do
  scenario 'See player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content "Matt: 60HP"
  end

end
