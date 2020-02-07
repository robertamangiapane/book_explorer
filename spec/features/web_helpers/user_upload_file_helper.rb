def user_upload_file
  find('form input[type="file"]').set('app/assets/images/Test_CSV.csv')
  click_button('Upload file')
end

def user_upload_file1
  find('form input[type="file"]').set('app/assets/images/Test_CSV1.csv')
  click_button('Upload file')
  click_link('Home')
end

def user_upload_file2
  find('form input[type="file"]').set('app/assets/images/Test_CSV2.csv')
  click_button('Upload file')
  click_link('Home')
end

def user_upload_file3
  find('form input[type="file"]').set('app/assets/images/Test_CSV3.csv')
  click_button('Upload file')
  click_link('Home')
end

def user_upload_invalid_file1
  find('form input[type="file"]').set('app/assets/images/Test_CSV_invalid.csv')
  click_button('Upload file')
end

def user_upload_invalid_file2
  find('form input[type="file"]').set('app/assets/images/Test_CSV_invalid2.csv')
  click_button('Upload file')
end
