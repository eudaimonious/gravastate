require 'watir-webdriver'

browser = Watir::Browser.new :firefox
browser.goto "https://en.gravatar.com/"
browser.link(:text => 'Sign In').click