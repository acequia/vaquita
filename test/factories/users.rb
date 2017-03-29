FactoryGirl.define do
  factory :user do
    email
    password { generate :unique_string }
  end
end
