require 'spec_helper'


#########################test for home page

describe "Statics" do         # it denotes the staics folder in app
	let (:heading) {"Ruby on Rails Tutorial Sample App"}
  describe "Home Page" do 
  before { visit root_path }    #  it describes which page to check
  	it "should have the content 'Sample App'" do
  		#visit root_path  this line is debugged because of before{}
  		page.should have_content('Sample App')


  end

	it "should have the h1 'Home'" do
		#visit root_path
		page.should have_selector('h1', :text => 'Home')  # this method to check the title is inside the  <h1> tag
	end

	it "should have the title  'Home'" do
	    #visit root_path
	    page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")	 # this would check the title of the home page contains home
	 end

	 it "should not have a custom page title" do
	 	#visit root_path
	 	page.should_not have_selector('title', :text => '| Home')
	 end
end

################################test for help page
describe "Help Page" do
	before { visit help_path}
	 it "should have the content 'Help'" do
	 	#visit help_path
	 page.should have_content('Help')
end
	it "should have the h1 'Help'" do
		#visit help_path                      #changing visit /statics/help to visit help_path we are giving the route to visit
		page.should have_selector('h1', :text => 'Help')
	end
	it "should have the title  'Help'" do
	    #visit help_path
	    page.should have_selector('title', :text => "#{heading} | Help")	
	 end
end

##################################test for about page
describe "About Page" do
	before { visit aboutus_path}
	it "should have the content 'About Us'" do
		  #visit aboutus_path 
	page.should have_content('About us')
end

	it "should have the h1 'About Us'" do
		#visit aboutus_path
		page.should have_selector('h1', :text => 'About us')
	end
	it "should have the title  'About Us'" do
	    #visit aboutus_path
	    page.should have_selector('title', :text => "#{heading} | About us")	
	 end
end

################################test for contact us
describe "Contact us" do
	before { visit contactus_path}
	it "should have the h1 'Contact us'" do
		#visit contactus_path
		page.should have_selector('h1', :text => 'Contact us')
	end
	it "should have the title 'Contact us'" do
	    #visit contactus_path
	    page.should have_selector('title', :text => "#{heading} | Contact us")	
	 end
end

end