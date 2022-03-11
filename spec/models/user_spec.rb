require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  subject { User.new(username: "Jack", email: "jsmith@sample.com", password: "password") }
  # subject(:user) { FactoryBot.build(:user) }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a username" do
    subject.username = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end
  
  it "is not valid if the email address doesn't have a @" do
    subject.email = "example.mail.com"
    expect(subject).to_not be_valid
  end

  it "is not valid if username is not unique" do
    User.create(username: "Jack", email: "mail@place.com", password: "123456" )
    expect(subject).to_not be_valid
  end

  it "is not valid if email is not unique" do
    User.create(username: "Jessica", email: "jsmith@sample.com", password: "123456" )
    expect(subject).to_not be_valid
  end

end
