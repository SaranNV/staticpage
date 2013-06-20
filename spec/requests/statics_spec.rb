require 'spec_helper'

describe "Statics" do         # it denotes the staics folder in app
  describe "Home Page" do     #  it describes which page to check
  	it "should have the content 'Sample App'" do
  		visit '/statics/home'
  		page.should have_content('Sample App')


  end
end
describe "Home Page" do
	it "should have the h1 'Home'" do
		visit '/statics/home'
		page.should have_selector('h1', :text => 'Home')  # this method to check the title is inside the  <h1> tag
	end

	it "should have the title  'Home'" do
	    visit '/statics/home'
	    page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Home")	 # this would check the title of the home page contains home
	 end
end
describe "Help Page" do
	 it "should have the content 'Help'" do
	 	visit '/statics/help'
	 page.should have_content('Help')
end
	it "should have the h1 'Help'" do
		visit '/statics/help'
		page.should have_selector('h1', :text => 'Help')
	end
	it "should have the title  'Help'" do
	    visit '/statics/help'
	    page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")	
	 end
end
describe "About Page" do
	it "should have the content 'About Us'" do
		  visit '/statics/aboutus' 
	page.should have_content('About us')
end
end

describe "About Us" do
	it "should have the h1 'About Us'" do
		visit '/statics/aboutus'
		page.should have_selector('h1', :text => 'About us')
	end
	it "should have the title  'About Us'" do
	    visit '/statics/aboutus'
	    page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About us")	
	 end
end

end