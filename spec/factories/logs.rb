# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :log do
    for_user_id 1
    log_type 1
  end
end
