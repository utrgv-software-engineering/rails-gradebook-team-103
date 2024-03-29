Feature: View Grades
    Scenario: view grades from homepage
      Given there are grades in the gradebook
      And I sign in
      When I visit the homepage
      Then I should see everyone's grades

    Scenario: view specific grade from homepage
      Given there are grades in the gradebook
      And I sign in
      When I visit the homepage
      Then I should see everyone's grades
      And I click "Show" on a post
      Then I should see that user's detailed grade information

    Scenario: view grades from homepage
      Given there are grades in the gradebook
      And I sign in as ta
      When I visit the homepage
      Then I should see everyone's grades

    Scenario: view specific grade from homepage
      Given there are grades in the gradebook
      And I sign in as ta
      When I visit the homepage
      Then I should see everyone's grades
      And I click "Show" on a post
      Then I should see that user's detailed grade information

    Scenario: view grades from homepage
      Given there are grades in the gradebook
      And I sign in as teacher
      When I visit the homepage
      Then I should see everyone's grades

    Scenario: view specific grade from homepage
      Given there are grades in the gradebook
      And I sign in as teacher
      When I visit the homepage
      Then I should see everyone's grades
      And I click "Show" on a post
      Then I should see that user's detailed grade information

    Scenario: Sort Grades in ascending order from homepage
      Given there are grades in the gradebook
      And I sign in
      When I visit the homepage
      And I click 'Ascending'
      Then I should sort everyone's grade from ascending order

    Scenario: Sort Grades in descending order from homepage
      Given there are grades in the gradebook
      And I sign in
      When I visit the homepage
      And I click 'Descending'
      Then I should sort everyone's grade from descending order