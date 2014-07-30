require 'rails_helper'

RSpec.describe "LayoutLinks", :type => :request do

	it "should have a Home page at '/'" do 
		get '/'
		response.should have_selector('title', :key => "Home")
	end

	it "should have a Contact page at '/contact'" do
		get '/contact'
		response.should have_selector('title', :key=> "Contact")
	end

	it "should have a Contact page at '/about'" do
		get '/contact'
		response.should have_selector('title', :key=> "About")
	end

	it "should have a Contact page at '/help'" do
		get '/contact'
		response.should have_selector('title', :key=> "Help")
	end

	it "should have a Contact page at '/signup'" do
		get '/contact'
		response.should have_selector('title', :key=> "Help")
	end

	it "should have the right links on the layout'" do
		visit root_path
		response.should have_selector('title', :key=> "Home")
		click_link "About"
		response.should have_selector('title', :content => "About")
		click_link "Contact"
		response.should have_selector('title', :content => "Contact")
		click_link "Home"
		response.should have_selector('title', :content => "Home")
		click_link "Sign up now!"
		response.should have_selector('title', :content => "signup")
		response.should have_selector('a[href="/"]>img')
	end
  
end
