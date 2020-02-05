require 'rails_helper'

RSpec.feature 'User log out' do
  scenario 'page display log in form after user log out' do
    user_sign_up
    click_link('Logout')
    expect(page).to have_content 'Log in'
  end
end
