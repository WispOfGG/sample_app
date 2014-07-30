require 'rails_helper'

render views

RSpec.describe UsersController, :type => :controller do

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to be_success
    end
  end

  it "should have the right title" do
  	get :new
  	expect(response).to have_selector("title", :content => "Sign up")
  end
 end

end
