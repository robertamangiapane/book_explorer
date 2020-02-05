require 'rails_helper'

RSpec.feature 'Homepage show all the file uploaded' do
  scenario 'last file is shown' do
    user_sign_up
    user_upload_file1
    user_upload_file2
    user_upload_file3

    expect(page).to have_content 'title test3'
  end

  scenario 'second last file is shown' do
    user_sign_up
    user_upload_file1
    user_upload_file2
    user_upload_file3

    expect(page).to have_content 'title test2'
  end

  scenario 'third last file is shown' do
    user_sign_up
    user_upload_file1
    user_upload_file2
    user_upload_file3

    expect(page).to have_content 'title test1'
  end
end
