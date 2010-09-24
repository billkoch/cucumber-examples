Feature:  Display weather information for locations based on zipcode
  In order to provide weather information to people,
  As a http://www.weather.com user
  I want to see weather information for my zipcode

  Scenario:  Weather for 43016
    Given I am on the weather.com homepage
    When I search for the zip code "43016"
    Then I should see "Dublin, OH (43016) Weather"
    But I should not see "Pittsburgh, PA (15237) Weather"
    And I should see "Right Now"
    And I should see "Next 36 Hours"