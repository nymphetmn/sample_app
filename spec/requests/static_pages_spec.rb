require 'spec_helper'
require 'rails_helper'

describe "Static pages" do

  let(:baseTitle) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it "должна иметь правильный заголовок" do
      visit root_path
      expect(page).to have_title("#{baseTitle}")
    end

    it "не должна иметь в базовом заголовке Home" do
      visit root_path
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "должна иметь правильный заголовок" do
      visit help_path
      expect(page).to have_title("#{baseTitle}")
    end

    it "не должна иметь в базовом заголовке Help" do
      visit help_path
      expect(page).not_to have_title("| Help")
    end
  end

  describe "Abous page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "должна иметь правильный заголовок" do
      visit about_path
      expect(page).to have_title("#{baseTitle}")
    end

    it "не должна иметь в базовом заголовке About Us" do
      visit about_path
      expect(page).not_to have_title("| About Us")
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "должна иметь правильный заголовок" do
      visit contact_path
      expect(page).to have_title("#{baseTitle}")
    end

    it "не должна иметь в базовом заголовке Contact" do
      visit contact_path
      expect(page).not_to have_title("| Contact")
    end
  end


end