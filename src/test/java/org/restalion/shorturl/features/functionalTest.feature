Feature: functionalTest

Background: 
    * url 'http://www.shorten-url.com'

Scenario: create a new short-url

Given path '/'
And request {actualUrl: 'www.google.com'}
When method post
Then status 200
And match response == {actualUrl: 'www.google.com', shortenUrl: '#regex http://www.shorten-url.com/[a-zA-Z0-9]{16}'}