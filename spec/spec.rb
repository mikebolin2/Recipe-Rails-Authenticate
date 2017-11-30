require 'spec_helper'
require 'rails_helper'

describe User, :type => :model do
  user = User.new
  user.role = "admin"

  context "Checkpoint 1" do
    it "should have a admin method" do
       expect(user).to respond_to(:admin?), "Make sure to add an admin method to the User model."
    end
    it "should get role to be admin" do
      expect(user.admin?).to be true
    end
  end
end