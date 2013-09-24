# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :userinfo do
    user_id 1
    user_type 1
    user_auth 1
    user_name "テストユーザ"
    user_address_number "1112222"
    user_address "広島県広島市佐伯区三宅"
  end
end
