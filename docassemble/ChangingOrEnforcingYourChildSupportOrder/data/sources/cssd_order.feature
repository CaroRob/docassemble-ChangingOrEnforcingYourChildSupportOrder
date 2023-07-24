Feature: User paths
@cssd_order

@row35 
Scenario: Row #35 CSED ordered
    Given I start the interview at "changing_enforcing_child_support.yml"
    And I get to the question id "final screen" with this data:
      | var | value | trigger |
      | user_need | change AK order |  |
      | who_ordered | cssd |  | 
    And I take a screenshot
    And I should see the phrase "Your Personal Action Plan for changing your child support order in 2 steps" 
    And I should see the phrase "Ask CSED to change your child support" 
    And I should see the phrase "Get more information or help"
    And I download "changing_child_support.pdf"

@row67 
Scenario: Row #35 CSED ordered
    Given I start the interview at "changing_enforcing_child_support.yml"
    And I get to the question id "final screen" with this data:
      | var | value | trigger |
      | user_need | change AK order |  |
      | who_ordered | unknown |  | 
      | find_who_ordered | cssd |  | 
    And I take a screenshot
    And I should see the phrase "Your Personal Action Plan for changing your child support order in 2 steps" 
    And I should see the phrase "Ask CSED to change your child support" 
    And I should see the phrase "Get more information or help"
    And I download "changing_child_support.pdf"
    
    
@row68
Scenario: Row #35 don't know who ordered
    Given I start the interview at "changing_enforcing_child_support.yml"
    And I get to the question id "final screen" with this data:
      | var | value | trigger |
      | user_need | change AK order |  |
      | who_ordered | unknown |  | 
      | find_who_ordered | cssd |  | 
    And I take a screenshot
    And I should see the phrase "Your Personal Action Plan for changing your child support order in 2 steps" 
    And I should see the phrase "Find out who issued your child support order" 
    And I should see the phrase "Get more information or help"
    And I download "changing_child_support.pdf"