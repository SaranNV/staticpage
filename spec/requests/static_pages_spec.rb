require 'spec_helper'

describe "StaticPages" do
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  describe "Home Page" do
   it "should have the content 'Sample App'" do
visit root_path
page.should have_selector('title',
:text => "#{base_title} | Home")
end
it "should have the h1 'Sample App'" do
visit root_path
page.should have_selector('h1', :text => 'Sample App')
end
  end

    describe "Help Page" do
   it "should have the content 'Help'" do
visit help_path
page.should have_selector('title',
:text => "#{base_title} | Help")

end
it "should have the h1 'Sample App'" do
visit help_path
page.should have_selector('h1', :text => 'Help')
end
  end
  describe "About page" do
it "should have the content 'About Us'" do
visit about_path
page.should have_selector('title',
:text => "#{base_title} | About")

end
it "should have the h1 'Sample App'" do
visit about_path
page.should have_selector('h1', :text => 'About Us')
end
end
 describe "Contact page" do
it "should have the content 'Contact Us'" do
visit contact_path
page.should have_selector('title',
:text => "#{base_title} | Contact")

end
it "should have the h1 'Sample App'" do
visit contact_path
page.should have_selector('h1', :text => 'Contact Us')
end
end
end
