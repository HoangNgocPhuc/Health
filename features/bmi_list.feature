Feature: BMI log
 
  As a user
  So that I can know status about health
  I want to see list bmi
  
  Background:
    Given I am a authenticated user
    And I am on health page
    
  Scenario: can not see list of BMI without data
    Then I should see "Bạn chưa có chỉ số BMI"
    And I should see "Tính ngay!"
  
  Scenario: can see list of BMI
    Given the following BMI exist:
      | height  | weight | bmi   | 
      | 149     |  58    | 26.12 |
      | 170     | 60     | 20.76 |  
      | 180     | 100    | 30.86 |
    Then I should see "Chỉ số BMI: 26.12"
    And I should see "Chỉ số BMI: 20.07"
    And I should see "Chỉ số BMI: 30.86"
       