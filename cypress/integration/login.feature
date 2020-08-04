Feature: Login

 log into Conduit
  
  Scenario: Conduit  Login with valid email and password 
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |
        
    And I click on Sign in button
    Then "Your Feed" should be shown

  Scenario: Conduit Login with invalid password
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com |0 |
        
    And I click on Sign in button
    Then "email or password is invalid" should be shown 

  Scenario: Conduit Login with inalid email
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        | diala.com|admin123 |
        
    And I click on Sign in button
    Then value 

 Scenario: Conduit Login with invalid email and password
    Given I open Conduit login page
    When I type in 
        |  username  | password  |
        |  diala@gmail.com|admin|
        
    And I click on Sign in button
    Then "email or password is invalid" should be shown

  Scenario: Conduit Login with empty email and password
    Given I open Conduit login page    
    And I click on Sign in button
    Then "email or password is invalid" should be shown

  Scenario: Conduit Login with valid email and empty password
    Given I open Conduit login page   
    When I type in username "diala@gmail.com"
    And I click on Sign in button
    Then "email or password is invalid" should be shown
