require 'spec_helper'
require 'rails_helper'

describe "Static pages" do

  let(:baseTitle) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "должна иметь правильный заголовок" do
      visit '/static_pages/home'
      expect(page).to have_title("#{baseTitle}")
    end

    it "не должна иметь в базовом заголовке Home" do
      visit '/static_pages/home'
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "должна иметь правильный заголовок" do
      visit '/static_pages/help'
      expect(page).to have_title("#{baseTitle}")
    end

    it "не должна иметь в базовом заголовке Help" do
      visit '/static_pages/help'
      expect(page).not_to have_title("| Help")
    end
  end

  describe "Abous page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "должна иметь правильный заголовок" do
      visit '/static_pages/about'
      expect(page).to have_title("#{baseTitle}")
    end

    it "не должна иметь в базовом заголовке About Us" do
      visit '/static_pages/about'
      expect(page).not_to have_title("| About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "должна иметь правильный заголовок" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{baseTitle}")
    end

    it "не должна иметь в базовом заголовке Contact" do
      visit '/static_pages/contact'
      expect(page).not_to have_title("| Contact")
    end
  end


end