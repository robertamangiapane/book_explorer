def user_upload_file
  fill_in ('csv_title'), with: 'title test'
  click_button('Upload file')
end

def user_upload_file1
  fill_in ('csv_title'), with: 'title test1'
  click_button('Upload file')
  click_link('Home')
end

def user_upload_file2
  fill_in ('csv_title'), with: 'title test2'
  click_button('Upload file')
  click_link('Home')
end

def user_upload_file3
  fill_in ('csv_title'), with: 'title test3'
  click_button('Upload file')
  click_link('Home')
end
