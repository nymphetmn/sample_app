require 'spec_helper'
require 'rails_helper'

describe "Static pages" do

  subject { page }
  let(:baseTitle) {"Ruby on Rails Tutorial Sample App"}

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(baseTitle) }
    it { should_not have_title(custom_title) }
  end

  describe "Home page" do
    before { visit root_path }

    let(:heading)    { 'Sample App' }
    let(:custom_title) { '| Home' }

    it_should_behave_like "all static pages"
  end

  describe "Help page" do
    before { visit help_path }

    let(:heading)    { 'Help' }
    let(:custom_title) { '| Help' }

    it_should_behave_like "all static pages"

  end

  describe "Abous page" do
    before { visit about_path }

    let(:heading)    { 'About' }
    let(:custom_title) { '| About Us' }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }

    let(:heading)    { 'Contact' }
    let(:custom_title) { '| Contact' }

    it_should_behave_like "all static pages"
  end
end