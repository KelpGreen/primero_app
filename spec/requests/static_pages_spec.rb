require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }
  let(:static_pages) { '/static_pages' }
  
  describe 'About Us page' do
    let(:url) { "#{static_pages}/about" }
    
    it "should have the h1 'About Us'" do
      visit url
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the right title" do
      visit url
      page.should have_selector('title',
        :text => "#{base_title} | About Us")
    end
    
  end

  describe 'Contact Us page' do
    let(:url) { "#{static_pages}/contact" }
    
    it "should have the h1 'Contact Us'" do
      visit url
      page.should have_selector('h1', :text => 'Contact Us')
    end
    
    it "should have the right title" do
      visit url
      page.should have_selector('title', :text => "#{base_title} | Contact Us")
    end
  end
  
  describe 'Help page' do
    let(:url) { "#{static_pages}/help" }
    
    it "should have the h1 'Help'" do
      visit url
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the right title" do
      visit url
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
    
  end
  
  describe "Home page" do
    let(:url) { "#{static_pages}/home" }
    
    it "should have the h1 'Sample App'" do
      visit url
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the right title" do
      visit url
      page.should have_selector('title', :text => "#{base_title} | Home")
    end
    
  end
  
end
