require 'spec/expectations'
require 'rubygems'
require 'safariwatir'

Given /^I am on the weather\.com homepage$/ do
  @browser = Watir::Safari.new()
  @browser.goto('http://www.weather.com')
end

When /^I search for the zip code "([^"]*)"$/ do |zipcode|
  @browser.text_field(:id, 'typeaheadBox').set(zipcode)
  @browser.button(:id, 'twc-weather-search-submit-id').click
end

Then /^I should see "([^"]*)"$/ do |what_i_should_see|
  @browser.text.should include(what_i_should_see)
end

Then /^I should not see "([^"]*)"$/ do |what_i_should_not_see|
  @browser.text.should_not include(what_i_should_not_see)
end
