require 'rails_helper'

RSpec.feature 'Upload new csv file' do
  scenario 'user is redirect to new file page when the upload is valid' do
    user_sign_up
    user_upload_file
    content = CSV.open('app/assets/images/Test_CSV.csv').read
    expect(page).to have_content content.join(' ')
  end

  # scenario 'failed because invalid UUID book in the file' do
  #   user_sign_up
  #   user_upload_invalid_file1
  #
  #   expect(flash[:alert]).to match(/There is an error with a unique identifier in the file/)
  # end
  #
  # scenario 'failed because of missing UUID book in the file' do
  #   user_sign_up
  #   user_upload_invalid_file2
  #
  #   expect(flash[:alert]).to match(/A unique identifier in the file is missing/)
  # end
end
