Feature: Update Grades
    Scenario: signed in and updating grades
        Given there are grades in the gradebook
        And I sign in
        When I visit the homepage
        And I click "Update Grade"
        And I fill out a form and submit
        Then I should have updated a grade
