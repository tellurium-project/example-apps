require 'rails_helper'

describe 'Session management', type: :feature do
  before do
    User.create(email: 'user@ex.com', password: 'pass')
  end

  it 'signs me in' do
    visit new_session_path

    within '#new_session_form' do
      fill_in 'Email', with: 'user@ex.com'
      fill_in 'Password', with: 'pass'
    end

    click_button 'Sign in'
    expect(page).to have_content 'Success'
  end
end
