Feature: Calculating BMI
  As a user
  So that know my BMI
  I want to calculate BMI
  
  Background: 
    Given the following users exist:
      | name | email                   | password     |
      | Lam  | hoanglamuet@gmail.com   | 123456       |
    And I login with email "hoanglamuet@gmail.com"
    When I want to calculate BMI
  
  Scenario: Can calculate BMI
    When I fill in "Chiều Cao (cm)" with "170"
    And I fill in "Cân nặng (kg)" with "58"
    And I press "Tính toán"
    Then I should see "Complete!"
    And I should see "Chỉ số BMI: 20.07"
    
  Scenario: Can not calculate BMI with invalid attributes
    When I fill in "Chiều Cao (cm)" with ""
    And I fill in "Cân nặng (kg)" with ""
    And I press "Tính toán"
    Then I should see "Height can't be blank" 
    And I should see "Weight can't be blank"
 