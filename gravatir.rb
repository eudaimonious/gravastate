require 'watir-webdriver'
require File.join(File.dirname(__FILE__), 'password')

#Generate a new avatar
require File.join(File.dirname(__FILE__), 'avatargenerator')

browser = Watir::Browser.new :firefox
browser.goto "https://en.gravatar.com/"

#Logging In to Gravatar
browser.link(:text => 'Sign In').click
browser.text_field(:id, "user_login").set("eudaimonious2013")
browser.text_field(:id, "user_pass").set(@password)
browser.button(:value,"Sign In").click

#Add the new avatar
browser.link(:text, "add a new image").click
browser.link(:text, "My computer's hard drive").click
browser.file_field(:name, "gravatar_file").set("/Users/mscott/dev/gravatate/newavatar.svg")
browser.button(:value,"Next").click

#Adjust crop - not working
#browser.link(:id, "compassn").wait_until_present
#browser.link(:id, "compassn").click
browser.button(:value,"Crop and Finish!").click

#Set to G rating
browser.button(:src,"http://s.gravatar.com/images/gravatars/ratings/0.gif?101").click
