Scenario: Verify Trello Board creation using API
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=9f02d67d750fc52e5afd1cd6c3283deb&token=cf4915eab3e747659d451a2d5452541ccccbbed615d8fecbce7daad68801effa&name=Test'
Then the response code is equal to '200'
Then the response body contains 'id'
