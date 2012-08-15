require 'spec_helper'

describe "Static Pages" do

  describe "Home page" do

    it "should have the h1 'kidtunes'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'kidtunes')
    end

    it "should have the base title " do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "kidtunes")
    end
  end

  it "should not have a custom page title" do
    visit '/static_pages/home'
    page.should have_selector('title', :text => "kidtunes")
  end

  describe "Help page" do

    it "should have the h1 'kidtunes'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'kidtunes')
    end

    it "should have the base title " do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "kidtunes")
    end
  end
  
  it "should not have a custom page title" do
    visit '/static_pages/help'
    page.should have_selector('title', :text => "kidtunes")
  end


  describe "Contact page" do

    it "should have the h1 'kidtunes'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'kidtunes')
    end

    it "should have the base title " do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "kidtunes")
    end

  end
  it "should not have a custom page title" do
    visit '/static_pages/contact'
    page.should have_selector('title', :text => "kidtunes")
  end

end

