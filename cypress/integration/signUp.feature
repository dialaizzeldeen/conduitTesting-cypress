 
 Feature: signUp
sign up for Conduit

   Scenario: signup with valid data
    Given I open signup page
    When I type in
        |  Username  | Email  | Password | 
        | 09876test |  test100000@gmail.com | admin123  |    
    And I click on Sign up button
    Then "Your Feed" should be shown
    
    Scenario: signup with invalid email
    Given I open signup page
    When I type in
        |  Username  | Email  | Password | 
        | userdd2 |  user1@com | 123456789  |    
    And I click on Sign up button
    Then "email is invalid" should be shown

    Scenario: signup with taken email
    Given I open signup page
    When I type in
        |  Username  | Email  | Password | 
        | sarajj |  diala@gmail.com | admin123  |    
    And I click on Sign up button
    Then "email has already been taken" should be shown
  
   Scenario: signup with empty email
    Given I open signup page
    When I type in
        |  Username  | Email  | Password | 
        | sarajj |  | admin123  |
    And I click on Sign up button
    Then "email can't be blank" should be shown

   Scenario: signup with invalid password (less than 8 characters)
    Given I open signup page
    When I type in
        |  Username  | Email  | Password | 
        | userdd2 |  user1@gmail | 1  |
    And I click on Sign up button
    Then "password is too short (minimum is 8 characters)" should be shown

  
   Scenario: signup with taken username
    Given I open signup page
    When I type in
        |  Username  | Email  | Password | 
        | diaIzz |  user1@gmail.co | admin123 |
    And I click on Sign up button
    Then "username has already been taken" should be shown
  
   Scenario: signup with empty password
    Given I open signup page
    When I type in
        |  Username  | Email  | Password | 
        | sarajj | diala@gmail.com | |
    And I click on Sign up button
    Then "password can't be blank" should be shown

    Scenario: signup with empty username
    Given I open signup page
    When I type in
        |  Username  | Email  | Password | 
        || diala@gmail.com | admin123 |
    And I click on Sign up button
    Then "username can't be blank" should be shown

    Scenario: signup with  username (1 character)
    Given I open signup page
    When I type in
        |  Username  | Email  | Password | 
        |-| diala+@gmail.com | admin123 |
    And I click on Sign up button
    Then "Your Feed" should be shown

    Scenario: signup with invalid username (more than 20 character)
    Given I open signup page
    When I type in
        |  Username  | Email  | Password | 
        |testtest87testtesttesttest97| diala@gmail.com | admin123 |
    And I click on Sign up button
    Then "username is too long (maximum is 20 characters)" should be shown

    Scenario: signup with  username (20 character)
    Given I open signup page
    When I type in
        |  Username  | Email  | Password | 
        |11223344556-77889900| diala@gmail.com | admin123 |
    And I click on Sign up button
    Then "Your Feed" should be shown
  
    Scenario: signup with  password (8 character)
    Given I open signup page
    When I type in
        |  Username  | Email  | Password | 
        |user11| diala@gmail.com | 12345=78 |
    And I click on Sign up button
    Then "Your Feed" should be shown