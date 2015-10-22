require 'selenium-webdriver'
# Given(/^New Driver$/) do
#   # caps = Selenium::WebDriver::Remote::Capabilities.firefox
#   driver = Selenium::WebDriver.for :remote, :url => "http://192.168.10.10:4444/wd/hub", :desired_capabilities => caps
# end

When(/^Open "([^"]*)"$/) do |url|
  @driver.get url
end

Given(/^I am on the Google home page$/) do
  puts visit "http://www.baidu.com"
end

Given(/^I am on the BBC home page$/) do
  puts visit "http://www.baidu.com"
end

Then(/^I should see page meet all accessibility criteria$/) do

end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |element, text|
  fill_in element, with: text
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text

  #page.driver.resize(20,30)  
  #page.save_screenshot("/path/to/test.pdf")
  #puts page.within_window
  #puts page.driver.network_traffic
  #puts page.driver.cookies
  #puts page.response_headers.to_a	
  #page.driver.debug

end

Given(/^I am on AOL home Page$/) do
  visit "http://www.baidu.com"
end

Given(/^I am on the Yahoo home page$/) do
  visit "http://www.baidu.com"
end

Given(/^I am on the Facebook home page$/) do
  visit "http://www.baidu.com"
end







