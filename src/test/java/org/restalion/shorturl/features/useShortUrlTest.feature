Feature: functionalTest

Background: 
    * url 'http://www.shorten-url.com'

Scenario: use short-url

Given path '/Wk97RJQW7q62CMQT'
When method get
Then status 200
And match responseType == 'string'
And match response contains 'https://duckduckgo.com/'

Scenario: use a non-registered short-url

Given path '/Wk97RJQW7q62CM43'
When method get
Then status 204