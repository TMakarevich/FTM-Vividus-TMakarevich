GivenStories: story/web/LogIn.story

Scenario: Verify that 'Test Vividus' block is collapsed when click on 'Down' arrow
When I find = '1' elements By.xpath(//span[@aria-label='UpIcon']) and while they exist do up to 2 iteration of
|step |
|When I click on an element by the xpath '//span[@aria-label='UpIcon']'           |
|Then an element by the xpath '//span[@aria-label='DownIcon']' exists             |
|Then an element by the xpath '//li//ul[@class='_1Arr2IZhlJ7MX2']' does not exist |
