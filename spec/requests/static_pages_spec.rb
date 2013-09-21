require 'spec_helper'

describe "StaticPages" do
  # describe "GET /static_pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
    # it "works! (now write some real specs)" do
    visit '/static_pages/home'
    expect(page).to have_content('Sample App')
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get static_pages_index_path
      # response.status.should be(200)
    end
    it "should have the right title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end
  describe "Help" do
    it "should have the content 'Help page'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
    describe "about page" do
      it "should have the content 'About Us'" do
        visit '/static_pages/about'
        expect(page).to have_content('About Us')
      end
      it "should have the title 'About Us'" do
        visit '/static_pages/about'
        expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
      end
    end
  end
end
