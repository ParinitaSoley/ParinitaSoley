Feature: Profile
	As a seller
	I want to login and update my profile

@mytag
Scenario: I can add update and delete my languages details
Given I login to the website and on profile page
When I select languages tab
And I click on add button
And I enter language as "English"
And I select my level "Fluent"
And I click on add to save my language details
Then I should see message "lanuage details saved successfully"
And I should be able to view my language details "English" and "Fluent"
When I click on pencil icon to update languages entry
And I enter language "English US"
And I select level "Basic"
And I click on update button
Then I should see message "updated successfully"
And I should be able to view my language details "English US" and "Basic"
When I click on delete button for language entry
Then I should see message "deleted successfully"


Scenario Outline: add personal details and description
Given I login to the website and on profile page
When I select my Availability '<availability>'
And I select my working hours "<hours>"
And I select my earn target "<earnTarget>"
And I enter my description "<description>"
And I save the details
Then I should be able to view my personal details "<availability>","<hours>","<earnTarget>","<description>"

Examples:
|	availability	|	hours                    | earnTarget               | description	|
|	Full Time    |	More than 30hours a week |	Between $500 and $1000 per month | my test description |
|	Part Time	|	Less than 30hours a week |	Less than $500 per month | my test description |
|	Part Time	| As needed                | More than $1000 per month | my test description |
|	Full Time	| Less than 30hours a week	| More than $1000 per month | my test description |