 Feature: article
 Conduit article

   Scenario: publish Article successfully
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |          
    And I click on "Sign in" button
    Then "Your Feed" should be shown
    And I click on "New Article" text
    When I create article 
     |  ArticleTitle  | articleDesc  |ArticleBody | tags | 
     |  article1| hii  |  test 1 |testtest | 
    And I click on "Publish Article" button  
    Then "article1" should be shown

   Scenario: publish Article with empty title 
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |          
    And I click on "Sign in" button
    Then "Your Feed" should be shown
    And I click on "New Article" text
    When I create article 
     |  ArticleTitle  | articleDesc  |ArticleBody | tags | 
     || hii  |  test 1 |testtest | 
    And I click on "Publish Article" button  
    Then "title can't be blank" should be shown

Scenario: publish Article with empty desciption 
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |          
    And I click on "Sign in" button
    Then "Your Feed" should be shown
    And I click on "New Article" text
    When I create article 
     |  ArticleTitle  | articleDesc  |ArticleBody | tags | 
     | test3 | | test 1 |testtest | 
    And I click on "Publish Article" button  
    Then "description can't be blank" should be shown

Scenario: publish Article with empty body 
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |          
    And I click on "Sign in" button
    Then "Your Feed" should be shown
    And I click on "New Article" text
    When I create article 
     |  ArticleTitle  | articleDesc  |ArticleBody | tags | 
     | test3 | test3 desc | |testtest | 
    And I click on "Publish Article" button  
    Then "body can't be blank" should be shown

Scenario: publish Article with empty tag 
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |          
    And I click on "Sign in" button
    Then "Your Feed" should be shown
    And I click on "New Article" text
    When I create article 
     |  ArticleTitle  | articleDesc  |ArticleBody | tags | 
     | test3 | test3 desc | body test 3| | 
    And I click on "Publish Article" button  
    Then "test3" should be shown


Scenario: publish Article with title (1 chracters)
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |          
    And I click on "Sign in" button
    Then "Your Feed" should be shown
    And I click on "New Article" text
    When I create article 
     |  ArticleTitle  | articleDesc  |ArticleBody | tags | 
     |t| test3 desc | body test 3| | 
    And I click on "Publish Article" button  
    Then "t" should be shown

Scenario: publish Article with description (1 chracters)
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |          
    And I click on "Sign in" button
    Then "Your Feed" should be shown
    And I click on "New Article" text
    When I create article 
     |  ArticleTitle  | articleDesc  |ArticleBody | tags | 
     | test4 |d| body test 3| | 
    And I click on "Publish Article" button  
    Then "test4" should be shown

    Scenario: edit Article description 
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |          
    And I click on "Sign in" button
    Then "Your Feed" should be shown
    And I click on "New Article" text
    When I create article 
     |  ArticleTitle  | articleDesc  |ArticleBody | tags | 
     |  article| hiii   |  test 1 |testtest | 
    And I click on "Publish Article" button 
    Then "article" should be shown
    And I click on "Edit Article" button 
    Then "Publish Article" should be shown
    When I edit article 
     | articleDesc  |
     |desc| 
     And I click on "Publish Article" button  
    Then " article " should be shown
    And I click on "Edit Article" button 
    Then "desc" should be shown 

    Scenario: edit Article body 
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |          
    And I click on "Sign in" button
    Then "Your Feed" should be shown
    And I click on "New Article" text
    When I create article 
     |  ArticleTitle  | articleDesc  |ArticleBody | tags | 
     |  article| hiii hii  |  test 1 |testtest | 
    And I click on "Publish Article" button 
    Then "article" should be shown
    And I click on "Edit Article" button 
    Then "Publish Article" should be shown
    When I edit article 
     | ArticleBody  |
     | edited body | 
     And I click on "Publish Article" button  
    Then "edited body " should be shown

      Scenario: edit Article title 
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |          
    And I click on "Sign in" button
    Then "Your Feed" should be shown
    And I click on "New Article" text
    When I create article 
     |  ArticleTitle  | articleDesc  |ArticleBody | tags | 
     |  article| hiii hii  |  test 1 |testtest | 
    And I click on "Publish Article" button 
    Then "article" should be shown
    And I click on "Edit Article" button 
    Then "Publish Article" should be shown
    When I edit article 
     | ArticleTitle  |
     | edited title | 
     And I click on "Publish Article" button  
    Then "edited title " should be shown
   
    Scenario: edit Article title (set it empty)
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |          
    And I click on "Sign in" button
    Then "Your Feed" should be shown
    And I click on "New Article" text
    When I create article 
     |  ArticleTitle  | articleDesc  |ArticleBody | tags | 
     |  article| hiii hii  |  test 1 |testtest | 
    And I click on "Publish Article" button 
    Then "article" should be shown
    And I click on "Edit Article" button 
    Then "Publish Article" should be shown
    When I edit article 
     | ArticleTitle  |
     | | 
     And I click on "Publish Article" button  
    Then "article" should be shown
  
    Scenario: edit Article description (set it empty)
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |          
    And I click on "Sign in" button
    Then "Your Feed" should be shown
    And I click on "New Article" text
    When I create article 
     |  ArticleTitle  | articleDesc  |ArticleBody | tags | 
     |  article|desc|  test 1 |testtest | 
    And I click on "Publish Article" button 
    Then "article" should be shown
    And I click on "Edit Article" button 
    Then "Publish Article" should be shown
    When I edit article 
     | articleDesc  |
     | | 
    And I click on "Publish Article" button  
    Then " article " should be shown
    And I click on "Edit Article" button 
    Then "desc" should be shown 

    Scenario: edit Article body (set it empty)
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |          
    And I click on "Sign in" button
    Then "Your Feed" should be shown
    And I click on "New Article" text
    When I create article 
     |  ArticleTitle  | articleDesc  |ArticleBody | tags | 
     |  article| hiii hii  |  test 1 |testtest | 
    And I click on "Publish Article" button 
    Then "article" should be shown
    And I click on "Edit Article" button 
    Then "Publish Article" should be shown
    When I edit article 
     | ArticleBody  |
     | | 
     And I click on "Publish Article" button  
    Then "test 1" should be shown

    
    Scenario: delete Article 
    Given I open Conduit login page
    When I type in
        |  username  | password  |
        |  diala@gmail.com| admin123  |          
    And I click on "Sign in" button
    Then "Your Feed" should be shown
    And I click on "New Article" text
    When I create article 
     |  ArticleTitle  | articleDesc  |ArticleBody | tags | 
     |  articleDe| delete test  |  test 1 |testtest | 
    And I click on "Publish Article" button 
    Then "articleDe" should be shown
    And I click on "Delete Article" button  
    Then " No articles are here... yet." should be shown
    


      