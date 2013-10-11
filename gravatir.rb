require 'watir-webdriver'
require File.join(File.dirname(__FILE__), 'password')

browser = Watir::Browser.new :firefox
browser.goto "https://en.gravatar.com/"

#Logging In to Gravatar
browser.link(:text => 'Sign In').click
browser.text_field(:id, "user_login").set("eudaimonious2013")
browser.text_field(:id, "user_pass").set(@password)
