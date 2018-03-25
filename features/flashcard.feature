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


#Background:
#Given I am on the flash card site
#Then I should use see “See Flash cards”
#When I press “See Flash cards”
#Then I should be on flash card page

#Scenario: Open the randomized flash card deck
#Given I am on flash card page
#Then I should see category selected as “All”
#And Then I should see “Randomized flash cards”

Scenario: Show next/previous flash card
Given I am on the flash card page
#And I should see “Randomized flash cards”
When I press next
Then I should see next flash card in the deck
When I press previous
Then I should see next flash card in the deck
