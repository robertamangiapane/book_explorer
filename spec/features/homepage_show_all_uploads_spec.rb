require 'rails_helper'

RSpec.feature 'Homepage show all the csv file uploaded' do
  scenario 'last file is shown' do
    user_sign_up
    user_upload_file1
    user_upload_file2
    user_upload_file3

    expect(page).to have_content 'Test_CSV3.csv'
  end

  scenario 'second last file is shown' do
    user_sign_up
    user_upload_file1
    user_upload_file2
    user_upload_file3

    expect(page).to have_content 'Test_CSV2.csv'
  end

  scenario 'third last file is shown' do
    user_sign_up
    user_upload_file1
    user_upload_file2
    user_upload_file3

    expect(page).to have_content 'Test_CSV1.csv'
  end

  scenario 'click on title will redirect to file content' do
    user_sign_up
    user_upload_file1
    click_link('Test_CSV1.csv')

    expect(page).to have_content 'Test_CSV1.csv'
  end
end
