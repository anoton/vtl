require 'test_helper'

class SignInTest < ActionDispatch::IntegrationTest
  test 'sign in test' do
    user = FactoryGirl.create(:user) 

    visit "/users/sign_in"

    fill_in "user_email",    :with => user.email
    fill_in "user_password", :with => user.password
    

    click_button "Sign in"
    
    assert page.has_content?("Signed in successfully.")
    
  end
end
