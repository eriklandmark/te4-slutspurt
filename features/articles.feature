Feature: Articles

   I Should be able to see and create an article and save it

   Scenario: Seeing articles
      Given I am on the articles page
      Then I should see "Listing articles"

   Scenario: Creating an article
      Given I am on the articles page
      Then I should see "New Article"
      When I click on "New Article"
      Then I should see "New article"
      Then I enter "Test Name" in "article[name]"
      Then I enter "Test Content" in "article[content]"
      When I click on "Create Article"
      Then I should see "Article was successfully created."

   Scenario: Editing an Article
      Given I am on the articles page
      Then I should see "Edit"
      When I click on "Edit"
      Then I should see "Editing article"
      Then I enter "Test Content After Edit" in "article[content]"
      When I click on "Update Article"
      Then I should see "Article was successfully updated."
      When I click on "Back"
      Then I should see "Test Content After Edit"

   Scenario: Editing an Article with Error
      Given I am on the articles page
      Then I should see "Edit"
      When I click on "Edit"
      Then I should see "Editing article"
      Then I enter "" in "article[name]"
      Then I enter "" in "article[content]"
      When I click on "Update Article"
      Then I should see "Content can't be blank"
      Then I should see "Name can't be blank"
      Then I enter "Test Name After Fix" in "article[name]"
      Then I enter "Test Content After Fix" in "article[content]"
      When I click on "Update Article"
      Then I should see "Article was successfully updated."
      When I click on "Back"
      Then I should see "Test Content After Fix"

   Scenario: Deleting an article
      Given I am on the articles page
      Then I should see "Test Name"
      When I click on "Destroy" with alert
      Then I should not see "New article"

   Scenario: Creating an article with Error
      Given I am on the articles page
      Then I should see "New Article"
      When I click on "New Article"
      Then I should see "New article"
      When I click on "Create Article"
      Then I should see "Content can't be blank"
      Then I should see "Name can't be blank"
      Then I enter "Test Name" in "article[name]"
      Then I enter "Test Content" in "article[content]"
      When I click on "Create Article"
      Then I should see "Article was successfully created."
      When I click on "Back"
      Then I should see "Test Name"

   Scenario: Deleting an article
      Given I am on the articles page
      Then I should see "Test Name"
      When I click on "Destroy" with alert
      Then I should not see "New article"