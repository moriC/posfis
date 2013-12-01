# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order, :class => 'Orders' do
    buyer_user_id 1
    business_user_id_integer "MyString"
    express_token "MyString"
    express_payer_id "MyString"
    condition 1
  end
end
