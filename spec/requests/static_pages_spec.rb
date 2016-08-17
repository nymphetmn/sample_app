require 'spec_helper'
require 'rails_helper'

describe "Static pages" do
  subject { page }
  let(:baseTitle) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title("#{baseTitle}")}
    it { should_not have_title ("| Home")}
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title("#{baseTitle}")}
    it { should_not have_title ("| Help")}
  end

  describe "Abous page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title("#{baseTitle}")}
    it { should_not have_title ("| About Us")}

  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title("#{baseTitle}")}
    it { should_not have_title ("| Contact")}
  end
end