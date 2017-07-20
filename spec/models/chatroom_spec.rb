require 'rails_helper'

RSpec.describe Chatroom, type: :model do
  describe "length validations" do
    it "should not allow name longer than 20 characters" do
      @chatroom=Chatroom.create!(name: "wajui")
      @chatroom.name="j" * 21
      expect(@chatroom).to_not be_valid
    end
  end
end
