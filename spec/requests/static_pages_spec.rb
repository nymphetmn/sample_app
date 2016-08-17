require 'spec_helper'
require 'rails_helper'

include ApplicationHelper

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(get_full_title(heading)) }
  end

  describe "Home page" do
    before { visit root_path }

    let(:heading)    { 'Home' }

    it_should_behave_like "all static pages"

    it "should have the right links on the layout" do
      click_link "About"
      expect(page).to have_title(get_full_title('About Us'))
      click_link "Help"
      expect(page).to have_title(get_full_title('Help'))
      click_link "Contact"
      expect(page).to have_title(get_full_title('Contact'))
      click_link "Home"
      expect(page).to have_title(get_full_title('Home'))
      click_link "Sign up now!"
      expect(page).to have_title(get_full_title('Sign Up'))
      click_link "sample app"
      expect(page).to have_title(get_full_title('Home'))
    end
  end

  describe "Help page" do
    before { visit help_path }

    let(:heading)    { 'Help' }

    it_should_behave_like "all static pages"

  end

  describe "Abous page" do
    before { visit about_path }

    let(:heading)    { 'About' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }

    let(:heading)    { 'Contact' }

    it_should_behave_like "all static pages"
  end


end