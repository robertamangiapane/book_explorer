def user_upload_file
  fill_in ('book_title'), with: 'title test'
  click_button('Upload file')
end
