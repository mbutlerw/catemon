require 'spec_helper'

describe 'submitting names' do
  it 'fills in names, submits, display' do
    sign_in_and_play
    expect(page).to have_content("Steve vs. Carlos")
  end

end
