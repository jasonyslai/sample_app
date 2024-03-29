require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      #check the home page of static_pages 
      #whether contains 'Sample App' or not
      expect(page).to have_content('Sample App')
    end

    it "should have the right title 'Home'" do
    	visit '/static_pages/home'
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
		end
  end

  describe "Help page" do
  	it "should have the content 'help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
		end

		it "should have the right title 'Help'" do
    	visit '/static_pages/help'
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
		end
	end


	describe "About page" do
		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Us')
		end
	end

	it "should have the right title 'About'" do
    	visit '/static_pages/about'
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
		end
end