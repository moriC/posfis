# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blog, :class => 'Blogs' do
    user_id 1
    category_id 1
    title "テスト投稿"
    contents "Test Blog Contents"
    condition 1
  end
end
