require 'spec_helper'
require 'rails_helper'
ActiveRecord::Migration.maintain_test_schema!

describe User do

  before { @user = User.new(name: "Example User", email: "user@example.com") }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
end