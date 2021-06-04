Feature: profile
	As a seller
	I want to login and update my profile

@automated
Scenario: I can add update and delete my languages details
#Given I login to the website and on profile page
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

@automated
Scenario Outline: add personal details and description
#Given I login to the website and on profile page
When I select my Availability '<availability>'
And I select my working hours "<hours>"
And I select my earn target "<earnTarget>"
And I enter my description "<description>"
And I save the details
Then I should be able to view my personal details "<availability>","<hours>","<earnTarget>","<description>"

Examples:
|	availability	|	hours                    | earnTarget               | description	|
|	Full Time    |	More than 30hours a week |	Between $500 and $1000 per month | my test description |
|	Part Time	|	Less than 30hours a week |	Less than $500 per month | my test description 2 |
|	Part Time	| As needed                | More than $1000 per month | my test description 3 |
|	Full Time	| Less than 30hours a week	| More than $1000 per month | my test description 4 |


Scenario: I can add update and deleta my skills details
Given I am logged in to the applicaton
When I navigate to Profile tab
And I select skills tab
And I click on add new
And I enter skill "C#"
And I select skill level "basic"
And I click on add to save my skills details
Then I should be able to save skill successfully
And I should be able to view my skills details as entered
When I click on pencil icon to update skills entry
And I enter skill "C# .net"
And I select skill level "Expert"
And I click on update button
Then I should see message "updated to skills successfully"
And I should be able to view my updated skills details as entered
When I click on delete button for skill entry
Then I should see message "skills detail deleted successfully"

Scenario: I can add update and delete my eductional details
Given I am logged in to the application
When I navigate to Profile tab
And I select education tab
And i click on add new
And I enter college name "Test College"
And I select my country of college as "<countryOfCollegeUniversity>"
And I select my "<title>"
And I enter my "Master of computer application"
And I select my Graduation year "<yearOfGraduction>"
And I click on Add to save my education details
Then I should see message "education details saved successfully"
And I should be able to view my educational details as entered
When I click on pencil icon to update education entry
#while updating education entrty we are updating 3 fields only
And I enter college name "Test College updated"
And I select my country of college as "<updatedCountryOfCollegeUniversity>"
And I select my Graduation year "<updatedYearOfGraduction>"
And i click on updtae button
Then I should see message "education details updated successfully"
And I should be able to view my updated educational details as entered
When I click delete button for education entry
Then I should see message "education details deleted successfully"
#optional
And my college name "Test College updated" is not displayed

Examples:

| countryOfCollegeUniversity | title | yearOfGraduction | updatedCountryOfCollegeUniversity | updatedYearOfGraduction |
| finland                    | phd   | 2012             | india                             | 2011                    |

Scenario: I can add more than one eductional details
Given I am logged in to the application
When I navigate to Profile tab
And I select education tab
And i click on add new
And I enter college name "Test College"
And I select my country of college as "<countryOfCollegeUniversity>"
And I select my "<title>"
And I enter my "Master of computer application"
And I select my Graduation year "<yearOfGraduction>"
And I click on Add to save my education details
Then I should see message "education details saved successfully"
And I should be able to view my educational details as entered

Examples:

| countryOfCollegeUniversity | title | yearOfGraduction |
| finland                     | phd   | 2012             |
| india                       | mtech | 2014             |

Scenario: I can add update and delete certifications details
Given I am logged in to the applicaton
When I navigate to Profile tab
And I select certifications tab
And I click on add new
And I enter my certificate or award "IC Test Analyst"
And I enter my certified from "IC"
And I select year "2020"
And I click on add to save my certifications details
Then I should see message "certifications details saved successfully"
And I should be able to view my certifications details as entered
When I click on pencil icon to update certification details
And I enter certificate "IC BI"
And I enter certificate from "IC"
And I select year "2021"
And I click on update button 
Then I should see message "certification details updated successfully"
And I should be able to view my updated certification details as entered
When I click delete button for certification entry
Then I should see message "certification details deleted successfully"
Then I should be able to logout

#negative test case

Scenario: Invaild education details for example some values entered some not
#no college name, no year, no title
Given I am logged in to the application
When I navigate to Profile tab
And I select education tab
And I click on add new
And I do not enter college name
And I select my country of college as "<countryOfCollegeUniversity>"
And I do not select my title
And I enter my "Master of computer application"
And I select my Graduation year "<yearOfGraduction>"
And I click on Add to save my education details
Then I should see message "please enter all the feilds"

Scenario: Invaild education details for example blank values
#no college name, no year, no title
Given I am logged in to the application
When I navigate to Profile tab
And I select education tab
And I click on add new
And I do not enter college name
And I do not select my country of college 
And I do not select my title
And I do not enter my degree
And I do not select my Graduation year 
And I click on Add to save my education details
Then I should see message "please enter all the feilds"

Scenario: Invaild education details for example duplicate values
#no college name, no year, no title
Given I am logged in to the application
When I navigate to Profile tab
And I select education tab
And i click on add new
And I enter college name "Test College"
And I select my country of college as "India"
And I select my "PHD"
And I enter my "Master of computer application"
And I select my Graduation year "2015"
And I click on Add to save my education details
Then I should see message "education details saved successfully"
And I should be able to view my educational details as entered
When I click on add new
And I enter college name "Test College"
And I select my country of college as "India"
And I select my "PHD"
And I enter my "Master of computer application"
And I select my Graduation year "2015"
And I click on Add to save my education details
Then I should see message "This information is already exist"





Scenario: Invaild skills details for example some value entered some not
Given I am logged in to the applicaton
When I navigate to Profile tab
And I select skills tab
And I click on add new
And I do not enter skill
And I select skill level "basic"
And I click on add to save my skills details
Then I should see message"please enter skills and expirence level"

Scenario: Invaild skills details for example blank values
Given I am logged in to the applicaton
When I navigate to Profile tab
And I select skills tab
And I click on add new
And I do not enter skill 
And I do not select skill level 
And I click on add to save my skills details
Then I should see message"please enter skills and expirence level"


Scenario: Invaild skills details for example duplicate values
Given I am logged in to the applicaton
When I navigate to Profile tab
And I select skills tab
And I click on add new
And I enter skill "C#"
And I select skill level "basic"
And I click on add to save my skills details
Then I should be able to save skill successfully
And I should be able to view my skills details as entered
When I click on add new
And I enter skill "C#"
And I select skill level "basic"
And I click on add to save my skills details
Then I should see message"This skill is already exist"


Scenario: Invaild languages details for some values entered some not
Given I am logged in to the applicaton
When I navigate to Profile tab
And I select languages tab
And I click on add button
And I enter language as "Enlish"
And I do not select my level 
And I click on add new to save my language details
Then I should see message "please enter language and level"


Scenario: Invaild languages details for blank values
Given I am logged in to the applicaton
When I navigate to Profile tab
And I select languages tab
And I click on add button
And I do not enter language
And I do not select my level
And I click on add new to save my language details
Then I should see message "please enter language and level"

Scenario: Invaild languages details for duplicate values
Given I am logged in to the applicaton
When I navigate to Profile tab
And I select languages tab
And I click on add button
And I enter language as "Enlish"
And I select my level "fluent"
And I click on add new to save my language details
Then I should see message "lanuage details saved successfully"
And I should be able to view my language details as entered
When I click on add new
And I enter language as "Enlish"
And I select my level "fluent"
Then I should see message "this language is already exist in your list"




Scenario: Invaild certifications details for some values entered some not
Given I am logged in to the applicaton
When I navigate to Profile tab
And I select certifications tab
And I click on add new
And I enter my certificate or award "IC Test Analyst"
And I do not enter my certified from
And I select year "2020"
And I click on add to save my certifications details
Then I should see message "please enter certification name,certification from and certification year" 

Scenario: Invaild certifications details for blank values
Given I am logged in to the applicaton
When I navigate to Profile tab
And I select certifications tab
And I click on add new
And I do not enter my certificate or award 
And I do not enter my certified from 
And I do not select year
And I click on add to save my certifications details
Then I should see message "please enter certification name,certification from and certification year"

Scenario: Invaild certifications details for duplicate values
Given I am logged in to the applicaton
When I navigate to Profile tab
And I select certifications tab
And I click on add new
And I enter my certificate or award "IC Test Analyst"
And I enter my certified from "IC"
And I select year "2020"
And I click on add to save my certifications details
Then I should see message "certifications details saved successfully"
And I should be able to view my certifications details as entered
When I click on add new 
And I enter my certificate or award "IC Test Analyst"
And I enter my certified from "IC"
And I select year "2020"
Then I should see message "this information is already exist"



Scenario: when we select add new and then cancel it before adding it
Given I am logged in to the application
When I navigate to Profile tab
And I select language tab
And I click on add new
And I click on cancel 
Then I should not see save message

Scenario: multiple skills entries
Given I am logged in to the application
When I navigate to Profile tab
And I select skills tab
And I click on add new
And I enter skill "JavaScript"
And I select level "Intermediate"
And I click on Add to save my skills details
Then I should see message "skill details saved successfully"
And I should be able to view my skill details as entered
Then I should be able to log out successfilly

Examples: 

| level        |
| Beginner     |
| Intermediate |
| Expert       |


Scenario: multiple certifications entries
Given I am logged in to the application
When I navigate to Profile tab
And I select certifications tab
And i click on add new
And I enter certificate "PHD"
And I enter certificate from "Industry connect"
And I select year "2021"
And I click on Add to save certification details
Then I should see message "certification details saved successfully"
And I should be able to view my certification details as entered
Then I should be able to log out successfully

Examples: 
| year |
| 2000 |
| 2001 |
| 2002 |
| 2003 |
| 2004 |
| 2005 |
| 2006 |
| 2007 |
| 2008 |
| 2009 |
| 2010 |



Scenario: multiple languages and cannot be more than 4
Given I am logged in to the applicaton
When I navigate to Profile tab
And I select languages tab
And I click on add new
And I enter language 
And I select level
And I click on add to save my language details
When I add three more language entry
Then I should not see add new button


Scenario: negative test for desription field(blank)
Given I am logged in to the application
When I navigate to Profile tab
And I enter my desciption " "
And I click on save button
Then I should see message "description is required"


Scenario: : add update description
Given I am logged in to the application
When I navigate to Profile tab
And I enter my desciption "My hobby is Painting"
And I click on save button
Then I should see message "description has been saved successfully"
And I should be able to view my description details as entered
When I click on pencil icon to update description
And I enter description
And I click on save button 
Then I should see message "description has been saved successfully"
And I should be able to view my updated description
Then I should be able to logout
