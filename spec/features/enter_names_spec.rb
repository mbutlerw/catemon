feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: "Andy"
    fill_in :player_2_name, with: "Matt"
    click_button "Submit"
    expect(page).to have_content "Andy vs. Matt"
  end
end
