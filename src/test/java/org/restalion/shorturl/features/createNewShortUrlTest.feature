Feature: functionalTest

Background: 
    * url 'http://www.shorten-url.com'

Scenario: create a new short-url

Given path '/'
And request {actualUrl: 'https://www.google.com'}
When method post
Then status 200
And match response == {actualUrl: 'https://www.google.com', shortenUrl: '#regex http://www.shorten-url.com/[a-zA-Z0-9]{16}'}

Scenario: create a new invalid short-url

Given path '/'
And request {actualUrl: 'invalid-url'}
When method post    
Then status 500