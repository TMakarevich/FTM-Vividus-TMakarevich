GivenStories: story/web/LogIn.story

Scenario: Verify the options in 'YOUR WORKSPACES' section

When I click on an element by the xpath '<xpath>'
Then the page with the URL '<URL>' is loaded
When I compare_against baseline with `<baseline>`
When I open URL `https://trello.com/` in new window

Examples:
|xpath|URL|baseline|
|//div/a[@href='/testvividus/tables']|https://trello.com/testvividus/tables|tables|
|//div/a[@href='/testvividus/members']|https://trello.com/testvividus/members|members|

Scenario: Verify 'View all closed boards' option

When I click on an element with the text 'View all closed boards'
When I compare_against baseline with `closedBoards` ignoring:
|ELEMENT       |
|By.xpath(//div/ul[@class='boards-page-board-section-list'])|
When I click on an element by the xpath '//button//span[@class='sc-bdVaJa ifeHxY']'
When I compare_against baseline with `boards` ignoring:
|ELEMENT       |
|By.xpath(//div/ul[@class='boards-page-board-section-list'])|

Scenario: Verify /testvividus URL ignoring the existing boards

When I click on an element by the xpath '//div/a[@href='/testvividus']'
Then the page with the URL 'https://trello.com/testvividus' is loaded
When I compare_against baseline with `testVividus` ignoring:
|ELEMENT       |
|By.xpath(//div[@class='boards-page-layout-list'])|
