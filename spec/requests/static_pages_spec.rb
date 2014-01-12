require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    
    it "should have the content 'mynection'" do
      visit '/static_pages/home'
      expect(page).to have_content('mynection')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("Mynection | Home")
    end
  end
  
  describe "Help page" do
    it "should have the content 'help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title('Mynection | Help Desk')
    end
  end
  
  describe "About page" do
    
    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title('Mynection | About Us')
    end
  end
end
