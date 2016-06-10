feature 'Game Over' do
  scenario 'When player 2 reaches 0 HP' do
    sign_in_and_play
    20.times{click_button('Attack')}
    expect(page).to have_content('Aquarious won!')
  end
end
