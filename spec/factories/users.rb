# require 'faker'

# FactoryBot.define do
#   # factory :user do
    
#   # end

#   # factory :user, class: User do
#   #   username {"test_user"}
#   #   email {"test_user@mail.com"}
#   #   password {"password"}
#   #   password_confirmation {"password"}
#   # end
#   # factory :existed_user, class: User do
#   #   username { "existed_user" }
#   #   email { "test_user@email.com" }
#   #   password { "password" }
#   #   password_confirmation { "password" }
#   # end

#   factory :user do |f|
#     f.username { Faker::Name.username }
#     f.email { Faker::Internet.email }
#     # f.password {Faker::Hipster.sentence(1)}
#     f.password {Faker::Lorem.unique.exclude :string, [number: 6], %w[azerty wxcvbn] }
#   end

# end

require 'faker'
FactoryBot.define do
  factory :user do |f|
    f.username { Faker::Name.unique.name }
   
    f.password { Faker::Number.number(digits: 6) }
    f.email { Faker::Internet.unique.email }
  end
end