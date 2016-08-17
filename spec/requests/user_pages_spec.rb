require 'spec_helper'
require 'rails_helper'

describe "User pages" do
  subject { page }

  let(:baseTitle) {"Ruby on Rails Tutorial Sample App"}

  describe "signup page" do
    before { visit signup_path}

    it { should have_content('Sign Up')}
    it { should have_title("#{baseTitle} | Sign Up")}
  end
end
