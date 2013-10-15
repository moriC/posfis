# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :manage_blog, :class => 'Manage::Blog' do
    user_id 1
    category_id 1
    title "テスト投稿"
    content "Test Blog Contents"
    condition 1
  end
end
