FactoryGirl.define do
  factory :event do
    name "MyString"
    description "MyText"
    start "2016-02-18 11:26:06"
    finish "2016-02-18 11:26:06"
    customer nil
    user nil
    all_day false
  end
end
