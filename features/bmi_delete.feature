Feature: Calculating BMI
  As a user
  So that remove old BMI in BMI list
  I want to delete BMI
    
  Background:
    Given the following users exist:
      | name | email                   | password     |
      | Lam  | hoanglamuet@gmail.com   | 123456       |
    And I login with email "hoanglamuet@gmail.com"
    
  Scenario: Can delete BMI
    When I want to calculate BMI
    When I fill in "Chiều Cao (cm)" with "170"
    And I fill in "Cân nặng (kg)" with "58"
    And I press "Tính toán"
    Then I click link "Delete"
    Then I should see "Result deleted"