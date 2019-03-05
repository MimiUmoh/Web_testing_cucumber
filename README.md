# Web_testing_cucumber

### Description 
This is a page object model to run tests on the BBC log in web page using cucumber. Use case scenarios are written in the gherkin syntax and are then turned into code blocks to be executed a to test if the web page functions as it is supposed to. 

### Languages used tools used 
Ruby programming language, Rspec, cucumber.

### How to download 
1. You have the option of downloading the test-framweork as a zip or git cloning it onto your terminal.
2. Once you have done that, you can then open the test-framework on a text editor such a vscode or atom to attempt some testing.


### How to use the test Framework 
1.)	One you open up the test-framework, make sure you download the necessary gems needed to make the framework run. Gems needed are rspec, capybara and selenium. To install these gems, run gem install ‘name of the gem’ on your terminal.
2.)	Once you have done that you are ready to start writing some tests and testing the bbc  webpage.
3.)	The bbc_login.feature is where you write your user case scenarios in gherkin syntax as suggested in the template. Once you have written, the gherkin syntax you run ‘cucumber’ on your terminal. 
4.)	Once you do that, code blocks should be printed on your terminal. Copy and paste the code blocks to bbc_login_step_defs.rb where you run your tests.
5.)	Before you run your tests make sure you create your methods in the bbc_homepage.rb and bbc_sign_in.rb within their classes. Both of these classes can be found in a superclass in bbc_site.rb where you can add more class objects if you choose to create more pages.
6.)	Your methods should be written in capybara. Once you have written them, you can them call them in your tests where you can also write rspec expectations assertions.
7.)	Once you have created your tests, you type ‘cucumber on the terminal to see if your tests have passed or failed.

