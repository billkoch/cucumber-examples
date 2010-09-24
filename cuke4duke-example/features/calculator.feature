Feature:  Adding numbers with a Calculator
  In order to not learn math
  As someone who is bad at math
  I want to be able to add numbers using a Calculator
  
  Scenario:  Add two positive numbers
    Given I have a Calculator
    When I add 1 and 1
    Then the sum should be 2
    
  Scenario:  Add a positive and negative number
    Given I have a Calculator
    When I add 1 and -1
    Then the sum should be 0
    
  Scenario:  Add two negative numbers
    Given I have a Calculator
    When I add -1 and -1
    Then the sum should be -2