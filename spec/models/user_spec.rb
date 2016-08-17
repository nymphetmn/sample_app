require 'spec_helper'
require 'rails_helper'
ActiveRecord::Migration.maintain_test_schema!

describe User do

  before { @user = User.new(name: "Example User", email: "user@example.com") }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should_not respond_to(:foobar)}
  it { should be_valid}

  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  describe "long name" do
    before { @user.name = "a"*51 }
    it { should_not be_valid }
  end
end