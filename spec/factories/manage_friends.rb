# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :manage_friend, :class => 'Manage::Friend' do
    from_user_id 1
    to_user_id 1
  end
end
