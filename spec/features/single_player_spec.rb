describe 'single player' do
  it 'displays computer as player 2' do
    visit('/')
    fill_in("single-player", with: "Matt")
    click_button("Single-Player")
    expect(page).to have_content('Matt vs. Computer')
  end
end
