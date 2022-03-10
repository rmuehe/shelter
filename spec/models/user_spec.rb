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

#  subject(:user) { FactoryBot.build(:user, email: email) }
#   context "If the email is duplicated" do
#     existed_user =  User.find_by(username: "existed_user") || FactoryBot.create(:existed_user)
#     let(:email) { existed_user.email }
#     it { is_expected.to be_invalid }
#    end

  
end
