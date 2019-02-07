require 'capybara/dsl'


class BbcHomepage
  include Capybara::DSL

  #page objects 
  HOMEPAGE_URL = 'https://bbc.co.uk'.freeze
  SIGN_IN = 'idcta-link'
  
  def visit_homepage
    visit(HOMEPAGE_URL)
  end 

  def click_login
    click_link(SIGN_IN)
  end 

end