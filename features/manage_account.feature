Feature: Manage account
  As a user
  I want to manage my account
  So that I change my information
  
  Scenario: Can edit my account
    Given I am a authenticated user
    When I want to edit my account
    Then I should see "Update your profile"
    Then I fill in "Password" with "111111"
    And I fill in "Confirmation" with "111111"
    And I press "Save changes"
    Then I should see "Profile updated"
    
  Scenario: Can see another user
    Given the following users exist:
      | name | email                   | password     |
      | Gin  | darkdragon236@gmail.com | tthanhuetn01 |
      | Lam  | hoanglamuet@gmail.com   | 123456       |
    And I login with email "hoanglamuet@gmail.com"
    When I go to all users page
    Then I should see link "Gin"