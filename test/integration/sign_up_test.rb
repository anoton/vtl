require 'test_helper'

class SignUpTest < ActionDispatch::IntegrationTest
   setup do 
    ActionMailer::Base.delivery_method = :test
    ActionMailer::Base.perform_deliveries = true
    ActionMailer::Base.deliveries = []
       
  end
  
 
  test 'sign up test' do

    visit "/users/sign_up"

    fill_in "user_email",                 :with => "misha@ukr.net"
    fill_in "user_password",              :with => "aaaaaa"
    fill_in "user_password_confirmation", :with => "aaaaaa"
    
    click_button "Sign up"
    
    assert page.has_content?('You have signed up successfully. However, we could not sign you in because your account is unconfirmed.')
   
    user = User.where(:email => "misha@ukr.net").first
    account = Account.where(:user_id => user.id)
    assert_not_nil(user, 'user not created')
    assert_not_nil(account, 'account not created')
    click_first_link_in_email (ActionMailer::Base.deliveries.last)
 
    
    assert page.has_content?('Your account was successfully confirmed. You are now signed in.')
    
  end
end
