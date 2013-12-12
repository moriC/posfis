# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	email "posfis@dev.com"
  	password "posfisdev"
    user_type 1
    user_auth 1
    user_name "テストユーザ"
    user_address_number "1112222"
    user_address "広島県広島市佐伯区三宅"
    paypal_login "tarai6666-facilitator_api1.gmail.com"
    paypal_password "1385821094"
    paypal_signature "AFcWxV21C7fd0v3bYYYRCpSSRl31AgpbS4ZXuDf6avcKhaIegN8QyIar"
  end
end
