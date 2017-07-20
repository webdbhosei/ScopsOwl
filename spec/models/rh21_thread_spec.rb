require 'rails_helper'

RSpec.describe Rh21Thread, type: :model do
  subject {described_class.new(
    title: "Title_Anything",
    subject: "Subject_Anything",
    content: "Content_Anything",
    language_id: "language_id_Anything",
    user_id: "user_id_anything"
    )}

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a subject" do
    subject.subject = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a content" do
    subject.content = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a language_id" do
    subject.language_id = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a user_id" do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
end
