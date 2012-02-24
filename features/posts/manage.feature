@javascript
Feature: Manage Posts
  As a User
  I want to be able to manage Posts (CRUD)

  Scenario: Posts CRUD
    Given I am signed in as "test@test.com"
      And current user is publisher
    When I go to the posts page
      And I click on "New Post"
      And I fill "A Great Post Title" as the post title
      And I fill "Body" as the post body
      And I press "Save"
    Then I should see "A Great Post Title"
      And I should see "test@test.com"
      And the post "A Great Post Title" should be authored by current user
      And the post "A Great Post Title" should have "a-great-post-title" as its permalink
    When I click "Edit" for "A Great Post Title"
      And I fill "Another Great Post Title" as the post title
      And I press "Save"
    Then I should see "Another Great Post Title"
    When I click "Delete" for "Another Great Post Title"
    Then I should not see "Another Great Post Title"
