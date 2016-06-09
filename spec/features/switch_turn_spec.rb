describe 'Turns' do
  it 'Player 1s turn at game start' do
    sign_in_and_play
    expect(page).to have_content("Steve's turn")
  end

  it 'Changes turn after attacking' do
    sign_in_and_play
    click_link("Attack")
    click_button("OK")
    expect(page).not_to have_content("Steve's turn")
    expect(page).to have_content("Carlos's turn")
  end
end
