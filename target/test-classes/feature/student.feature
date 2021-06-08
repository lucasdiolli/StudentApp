Feature: Testing diferents requests

@SmokeFeature
Scenario: Check if the student application can the accessed by users

	When User send a GET request to the list endpoint, they must get back a valid status code


Scenario Outline: Create a new student and verify if the student is added
	When I create a new student by providing the information firstName <firstName> lastName <lastName> email <email> programme <programme> courses <courses> 
	Then I verify that the student with firstName <firstName> is created 
	
	Examples:
	| firstName | lastName | email        | programme | courses |
	|Lucas      |Souza     |lss@gmail.com | Developer | Java    |
	|Joao       |Souza     |js@gmail.com  | Developer | C#      |