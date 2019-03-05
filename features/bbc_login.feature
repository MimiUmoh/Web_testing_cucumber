Feature: BBC Login

  Scenario: Inputting incorrect username and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to log in
    Then I recieve an arror for not finding the account

  Scenario: Inputting incorrect short password and username shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect short password details
    When I try to log in
    Then I recieve an error message passowrd too short

  Scenario: Inputting incorrect password that only contains letters and incorrect username shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input  password that only contain letters details
    When I try to log in
    Then I recieve an error messagge that says i need to include soemthing that is not a letter

  Scenario: Inputting no password  and valid credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I leave password empty
    When I try to log in
    Then I recieve an error saying something is missing please try again

  Scenario: Inputting no username and password credentials shows an error
    Given I access the bbc login page
    And I leave username and email empty
    And I leave password empty
    When I try to log in
    Then I recieve an error saying something is missing please check and try again

  Scenario: Inputting one character for username and empty password shows an error
    Given I access the bbc login page
    And I input one character for the user name
    And I leave password empty
    When I try to log in
    Then I recieve an error saying the username is too short

  Scenario: Inputting one character username and fifty character long password shows an error
    Given I access the bbc login page
    And I input one character for the user name
    And I put a password that is more than fifty characters long
    When I try to log in
    Then I recieve an error saying that password cannot be more than fifty characters long

  Scenario: Inputting username  and password more than fifty characters long shows an error
    Given I access the bbc login page
    And I put a username  tha is more than fifty characters long
    And I put a password that is more than fifty characters long
    When I try to log in
    Then I recieve an error saying that username cannot be more than fifty characters long

  Scenario: Inputting username with no valid characters and password with more than fifty characters long shows an error
    Given I access the bbc login page
    And I put a username  that does not contain valid characters
    And I put a password that is more than fifty characters long
    When I try to log in
    Then I recieve an error saying that the username can only have valid credentials

  Scenario: Inputting a username with no valid characters and password that does not include a letter shows an error
    Given I access the bbc login page
    And I put a username  that does not contain valid characters
    And I  put a password that does not include a letter
    When I try to log in
    Then I recieve an error saying that password must include a letter


#when you run cucumber it looks for a features folder then for a support folder, it hten goes on the eht env file then sets up the enironement, it then it looks at the hooks and then it goes for the features and then reads the features for us, picks up the features scenario, it sees a given, then grabs it as a string, then it looks for s atep defitnion with exatly the sam estring as that using regex, if it cannot find one it iwll output t into the terminal. if it cannt find the string it does to create the code block for you. cucumber has read that feature file, if it cannt find the string it creates on efor you in the console log or terminal.