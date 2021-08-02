Scenario: Verify creation a Walmart account
Given I am on a page with the URL 'https://www.walmart.com/'
When I click on an element with the text 'Account'
When I click on an element with the text 'Sign In'
When I click on an element with the text 'Create account'
When I enter `<firstName>` in field located `By.xpath(//*[@id="first-name-su"])`
When I enter `<lastName>` in field located `By.xpath(//*[@id="last-name-su"])`
When I enter `<email>` in field located `By.xpath(//*[@id="email-su"])`
When I enter `Test1234` in field located `By.xpath(//*[@id="password-su"])`
When I click on an element with the text 'Create account'
Then the page with the URL containing 'https://www.walmart.com/' is loaded

Examples:
|firstName                  |lastName                 |email						      |
|#{generate(Name.firstName)}|#{generate(Name.lastName)}|#{generate(Internet.emailAddress)}|


