require 'capybara/dsl'

class BbcSignInPage
  include Capybara::DSL
  attr_accessor :error, :error2, :password_no_match, :password_only_letters, :something_is_missing_message, :form_message_general

  LOGIN = 'https://account.bbc.com/signin'
  EMAIL = 'user-identifier-input'
  PASSWORD = 'password-input'
  LOG_IN = 'submit-button'
  ERROR = 'form-message-username'
  ERROR_2 = 'form-message-password'
  FORM_MESSAGE = 'form-message-general'

  def initialize
    @error = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
    @error2 = 'Sorry, that password is too short. It needs to be eight characters or more.'
    @password_no_match = "Sorry, that password isn't valid, please include somthing that isn't a letter"
    @password_only_letters = "Sorry, that password isn't valid. Please include something that isn't a letter."
    @something_is_missing_message = "Something's missing. Please check and try again."
    @form_message_general = "Sorry, those details don't match. Check you've typed them correctly."
    

  end 

  def visit_homepage
    visit(LOGIN_URL)
  end 

  def enter_username(email)
    fill_in(EMAIL, :with => email)
  end 

  def enter_password(passowrd)
    fill_in(PASSWORD, :with => passowrd)
  end 

  def log_in
    find_button(LOG_IN).click
  end 

  def error_message
    find(:id, ERROR).text 
  end  

  def short_password
    fill_in(PASSWORD, :with => passowrd)
  end 
  
  def error_message_two
    find(:id,ERROR_2).text 
  end 
  
  def general_form_message
    find(:id,FORM_MESSAGE).text 
  end 

end 
