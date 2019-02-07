#copy and paste the code block for you, we are going ot use our POM ro run mehtods in here tointeract with the page. we will also use assertion libaries to check values.   we are going to build a page object model around the bbc site.


Given("I access the bbc login page") do
  @bbc_site = BbcSite.new 
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.click_login
end

Given("I input incorrect username details") do
  @bbc_site.bbc_sign_in.enter_username('ememumoh@fil.com')
end

Given("I input incorrect password details") do
  @bbc_site.bbc_sign_in.enter_password('mimidbsfhdbfh1')
end

When("I try to log in") do
  @bbc_site.bbc_sign_in.log_in
end 

Then("I recieve an arror for not finding the account") do
  expect(@bbc_site.bbc_sign_in.error_message).to eql @bbc_site.bbc_sign_in.error
end

Given("I input incorrect short password details") do
  @bbc_site.bbc_sign_in.enter_password('mdh')
end

Then("I recieve an error message passowrd too short") do
  expect(@bbc_site.bbc_sign_in.error_message_two).to eql @bbc_site.bbc_sign_in.error2
end

Given("I input  password that only contain letters details") do
  @bbc_site.bbc_sign_in.enter_password('abcdefghighhj') 
end

Then("I recieve an error messagge that says i need to include soemthing that is not a letter") do
  expect(@bbc_site.bbc_sign_in.error_message_two).to eql @bbc_site.bbc_sign_in.password_only_letters
  expect(@bbc_site.bbc_sign_in.error_message_two).to be_kind_of(String)
end

Given("I leave password empty") do
  @bbc_site.bbc_sign_in.enter_password('')
end

Then("I recieve an error saying something is missing please try again") do
  expect(@bbc_site.bbc_sign_in.error_message_two).to eql @bbc_site.bbc_sign_in.something_is_missing_message
end

Given("I leave username and email empty") do
  @bbc_site.bbc_sign_in.enter_username('')
end

Then("I recieve an error saying something is missing please check and try again") do
  expect(@bbc_site.bbc_sign_in.error_message).to eql @bbc_site.bbc_sign_in.something_is_missing_message
  expect(@bbc_site.bbc_sign_in.error_message_two).to eql @bbc_site.bbc_sign_in.something_is_missing_message
  expect(@bbc_site.bbc_sign_in.general_form_message).to eql @bbc_site.bbc_sign_in.form_message_general
end

Given("I input one character for the user name") do
  @bbc_site.bbc_sign_in.enter_username('1')
end

Then("I recieve an error saying the username is too short") do
  expect(@bbc_site.bbc_sign_in.error_message).to eql @bbc_site.bbc_sign_in.username_too_short
end

Given("I put a password that is more than fifty characters long") do
  @bbc_site.bbc_sign_in.enter_password('ngghjkhsdjdhvwhhkgvdsvwhvdgvhVHBwjlvhWLHUVHlbhu5789hgg')
end

Then("I recieve an error saying that password cannot be more than fifty characters long") do
  expect(@bbc_site.bbc_sign_in.error_message_two).to eql @bbc_site.bbc_sign_in.password_too_long
end

Given("I put a username  tha is more than fifty characters long") do
  @bbc_site.bbc_sign_in.enter_username('vLDKLBkkdSEBHVBDJVSJDHVHHvdlwj%£JHHWBBHDWegvagggnggjgkmgg')
end

Then("I recieve an error saying that username cannot be more than fifty characters long") do
  expect(@bbc_site.bbc_sign_in.error_message).to eql @bbc_site.bbc_sign_in.username_too_long
end

Given("I put a username  that does not contain valid characters") do
  @bbc_site.bbc_sign_in.enter_username('[frs;[pliho4')
end

Then("I recieve an error saying that the username can only have valid credentials") do
  expect(@bbc_site.bbc_sign_in.error_message).to eql @bbc_site.bbc_sign_in.username_must_have_valid_characters
end