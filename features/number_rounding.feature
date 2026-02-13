Feature: Round a number



Scenario: Round a number up
  Given the number is 3.7
  And the number of decimal places is 0
  When I round the number
  Then result should be 4

Scenario: Round a number down
  Given the number is 3.2
  And the number of decimal places is 0
  When I round the number
  Then result should be 3

Scenario: Round a number to one decimal
  Given the number is 3.45
  And the number of decimal places is 1
  When I round the number
  Then result should be 3.5

Scenario: Round a number to two decimal
  Given the number is 3.456
  And the number of decimal places is 2
  When I round the number
  Then result should be 3.46

Scenario: Round a number to one decimal
  Given the number is 3.45
  And the number of decimal places is 1
  When I round the number
  Then result should be 3.5

Scenario: Határon lévő szám
  Given the number is 3.5
  And the number of decimal places is 0
  When I round the number
  Then result should be 4

Scenario: Negatív szám lefelé
  Given the number is -3.7
  And the number of decimal places is 0
  When I round the number
  Then result should be -4

Scenario: Negatív szám felfelé
  Given the number is -3.2
  And the number of decimal places is 0
  When I round the number
  Then result should be -3