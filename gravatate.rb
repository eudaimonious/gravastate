require 'rubygems'
require 'mechanize'

#Go to the Gravatar Website
agent = Mechanize.new
page = agent.get('https://en.gravatar.com/')
page = agent.page.link_with(:text => 'Sign In').click

#Go to the login page
login_form = page.form('loginform')
login_form.log = 'eudaimonious2013'
login_form.pwd = ''
redirect = login_form.redirect_to
page = agent.submit(login_form, login_form.buttons.first)

#Follow the redirect to the emails page
page = agent.get(redirect)

#Go to the new image page
page = agent.page.link_with(:text => 'add a new image').click

#Select hard drive
page = agent.page.link_with(:text => " My computer's hard drive").click

#Fill out the upload field and click submit
page.form.file_uploads.first.file_name = "/Users/mscott/Pictures/food-franchise-opportunities-overland-park.jpg"
page = agent.submit(page.form)

#Click Crop and Finish!
page = click_button()

pp page


