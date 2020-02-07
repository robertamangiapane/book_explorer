require 'rails_helper'

RSpec.feature 'Upload new csv file' do
  scenario 'user is redirect to new file page' do
    user_sign_up
    user_upload_file
    content = CSV.open('app/assets/images/Test_CSV.csv').read
    expect(page).to have_content content.join(' ')
  end
end
