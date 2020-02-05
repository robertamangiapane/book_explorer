require 'rails_helper'

RSpec.feature 'Upload new file' do
  scenario 'page display upload form' do
    user_sign_up

    expect(page).to have_content 'Upload new file'
  end
end
