def user_sign_up
  visit 'home/index'
  click_link('Sign up')
  fill_in ('user_email'), with: 'test@test.com'
  fill_in ('user_password'), with: '123456'
  fill_in ('user_password_confirmation'), with: '123456'
  click_button('Sign up')
end
