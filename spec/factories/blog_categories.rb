# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blog_category, :class => 'BlogCategory' do
    category_name "Test Data"
    condition 1
  end
end
