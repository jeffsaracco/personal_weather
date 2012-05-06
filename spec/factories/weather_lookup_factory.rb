FactoryGirl.define do
  factory :weather_lookup do
    current { FactoryGirl.build(:forecast) }
    weekly { [FactoryGirl.build(:forecast)] }
  end
end
