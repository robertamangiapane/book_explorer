require 'rails_helper'

RSpec.feature 'Upload new csv file' do
  scenario 'user is redirect to new file page' do
    user_sign_up
    user_upload_file

    expect(page).to have_content 'title test'
  end
end
