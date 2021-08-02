Scenario: Verify a cart with added item from the search

Given I am on a page with the URL 'https://www.walmart.com/'
When I click on an element with the text 'Account'
When I click on an element with the text 'Sign In'
When I enter '${userEmail}' in a field by the xpath '//div/input[@id='email']'
When I enter '${userPassword}' in a field by the xpath '//*[@id='password']'
When I click on an element with the text 'Sign in'
When I wait until the page has the title 'Walmart.com | Save Money. Live Better.'
When I enter 'UNO Harry Potter' in a field with the name 'query'
When I click on an element by the xpath '//button[@id='global-search-submit']'
When I click on an element with the text 'Themed Card Game for 2-10 Players Ages 7Y+'
When I click on an element with the text 'Add to cart'
When I wait until the page has the title 'Item added to cart - Walmart.com'
When I click on an element with the text 'View cart'
Then the page with the URL containing 'https://www.walmart.com/cart' is loaded
