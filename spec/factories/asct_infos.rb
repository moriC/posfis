# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :asct_info do
    dealer "MyString"
    manager "MyString"
    manager_number 1
    manager_address "MyString"
    manager_tel 1
    manager_mail "MyString"
    additional_costs "MyText"
    order_method "MyText"
    pay_method "MyText"
    pay_limit "MyText"
    delivered_time "MyText"
    return_method "MyText"
    condition 1
  end
end
