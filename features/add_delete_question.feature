Feature: Add/delete Flash Cards
As an admin
So that PhD Qual users can practice
I want to add/delete Flash Cards

Background: Admin should be able to login

Given the admin exists:
|   name   |         email         | password | password_confirmation |
|  satish  |   admin@cs.tamu.edu   |  foobar  |         foobar        |

Given the following questions exist:
  | question   | option1 | option2 | option3 | option4 | option5 | answer | category |
  | Question1  |   AA    |   BB    |    CC   |   DD    |   EE    |   BB   |     1    |
  | Question2  |   AA    |   BB    |    CC   |   DD    |   EE    |   DD   |     2    |
  | Question3  |   AA    |   BB    |    CC   |   DD    |   EE    |   CC   |     3    |
  | Question4  |   AA    |   BB    |    CC   |   DD    |   EE    |   EE   |     1    |

Given I am on the home page
And I follow "Login"

Scenario: I should be able to add or delete question after I am logged in
Then I should see "Email"
Then I should see "Password"
When I fill in "Email" with "admin@cs.tamu.edu"
And I fill in "Password" with "foobar"
And I press "Log in"
#Then I should be on Questions Page
And I should see "Log out"

# Adding new question
And I follow "Add new question"
Then I should see "Create New Question"
When I select "Networks" from "Question Category"
And I fill in "Question" with "Random Question"
And I press "Save Changes"
Then I should see "Question was successfully added."

# Delete Flash Card(s)
#When I fill in "Search:" with “1”
#Then I should see a list of questions
#When I select question(s)
#And I press "Delete"
#Then I should be on the homepage
#And I should see the message “Flash Card successfully deleted”
