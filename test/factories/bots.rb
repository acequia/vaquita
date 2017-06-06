FactoryGirl.define do
  factory :bot do
    chip_id { generate :unique_string }
  end
end
