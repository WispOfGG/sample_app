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
  
end
