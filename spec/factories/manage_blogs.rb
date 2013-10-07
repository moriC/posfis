# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :manage_blog, :class => 'Manage::Blogs' do
    user_id 1
    category_id 1
    title "MyString"
    contents "MyText"
    condition 1
  end
end
