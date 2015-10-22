require 'cucumber'
Before do |scenario|
  # capabilities = {
  #     'appium-version'=>'1.0',
  #     'platformName'=>'iOS',
  #     'platformVersion'=>'8.4',
  #     'deviceName'=>'iPad Retina',
  #     'url' => 'http://192.168.10.10:4444/wd/hub'
  # }

  # server_url = "http://0.0.0.0:4723/wd/hub"

  # Appium::Driver.new(caps: capabilities).start_driver
  # Appium.promote_appium_methods Object
  caps = Selenium::WebDriver::Remote::Capabilities.chrome
  @driver = Selenium::WebDriver.for :remote, :url => "http://192.168.10.10:4444/wd/hub", :desired_capabilities => caps
  # @driver.get "http://www.baidu.com"
end

After do |scenario|
  @driver.quit
end

# at_exit do
#   @driver.quit
# end
