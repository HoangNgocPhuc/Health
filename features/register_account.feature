Feature: register account
  As a user
  I want to have an account on your page
  So that I can sign up, login your page
  
  Background:
	  Given I am not authenticated
    When I go to register
	
  Scenario Outline: Creating a new account
    And I fill in "Name" with "<name>"
    And I fill in "Email" with "<email>"
    And I fill in "Password" with "<password>"
    And I fill in "Confirmation" with "<password>"
    And I press "Create my account"
    Then I should see "Welcome to MYL!" # your work!

    Examples:
      |name   | email                   | password      |
      |   Gin | darkdragon236@gmail.com | tthanhuetn01  |
      |   Lam |   hoanglamuet@gmail.com | 123456        |
    
  Scenario: Sign up with invalid email
	  When I fill in "Email" with ""
	  And I press "Create my account"
	  Then I should see "Email can't be blank"
  
  Scenario: Log in with invalid attributes
	  Given I am on log in page
	  When I fill in "Email" with ""
	  And I fill in "Password" with "123456"
	  And I press "Log in"
	  Then I should see "Invalid email/password combination or this user already existed"	  
	  