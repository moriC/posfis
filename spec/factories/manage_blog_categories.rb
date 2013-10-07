# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :manage_blog_category, :class => 'Manage::BlogCategory' do
    category_name "MyString"
    condition 1
  end
end
