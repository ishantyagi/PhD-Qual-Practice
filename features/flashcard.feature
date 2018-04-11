Feature: View the flash cards
As a PhD Qual user
So that I can view the random flash cards
I want to see next or previous flash cards

Background: questions in database

Given the following questions exist:
  | question   | option1 | option2 | option3 | option4 | option5 | answer | category |
  | Question1  |   AA    |   BB    |    CC   |   DD    |   EE    |   BB   |     1    |
  | Question2  |   AA    |   BB    |    CC   |   DD    |   EE    |   DD   |     2    |
  | Question3  |   AA    |   BB    |    CC   |   DD    |   EE    |   CC   |     3    |
  | Question4  |   AA    |   BB    |    CC   |   DD    |   EE    |   EE   |     1    |
And I am on the home page

Scenario: Show next/previous flash card
Then I should see "Welcome"
When I follow "Start Practice"
#And I should see “Randomized flash cards”
Then I should see "Question1"
When I press "Next"
Then I should see "Question2"
When I press "Next"
Then I should see "Question3"
#When I press "Previous"
#Then I should see "Question2"
