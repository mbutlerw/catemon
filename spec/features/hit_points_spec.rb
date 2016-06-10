require 'spec_helper'

describe 'hit points' do
  it 'displays player_2s hit points' do
    sign_in_and_play
    expect(page).to have_content("Carlos: 60HP")
  end

  it 'displayers player_1s hit points' do
    sign_in_and_play
    expect(page).to have_content("Steve: 60HP")
  end

  it 'reduces player_2 points by random_damage_amount' do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content("Carlos: 60HP")
  end

  it 'reduces player_1 points by random_damage_amount' do
    sign_in_and_play
    2.times { attack_and_confirm }
    expect(page).not_to have_content("Steve: 60HP")

  end

end
