require 'spec_helper'
require 'rails_helper'
include ApplicationHelper

describe "ApplicationHelper" do

  describe "full_title" do
    it "should include the page title" do
      expect(get_full_title("foo")).to match(/foo/)
    end

    it "should include the base title" do
      expect(get_full_title("foo")).to match(/^Ruby on Rails Tutorial Sample App/)
    end

    it "should not include a bar for the home page" do
      expect(get_full_title("")).not_to match(/\|/)
    end
  end
end