Feature: View the flash cards
As a PhD Qual user
So that I can view the random flash cards
I want to see next or previous flash cards

Background:
Given I am on the flash card site
Then I should use see “See Flash cards”
When I press “See Flash cards”
Then I should be on flash card page

Scenario: Open the randomized flash card deck
Given I am on flash card page
Then I should see category selected as “All”
And Then I should see “Randomized flash cards”

#Scenario: Show next/previous flash card
#Given I am on the flash card page
#And I should see “Randomized flash cards”
#When I press next or previous
#Then I should see next or previous flash card in the deck
