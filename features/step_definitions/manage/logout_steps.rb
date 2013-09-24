前提(/^ログインしている$/) do
  visit '/users/sign_in'
  FactoryGirl.create :user
  fill_in 'user_email', :with => 'posfis@dev.com'
  fill_in 'user_password', :with => 'posfisdev'
  click_button "Sign in"
  visit '/manage'
end

もし(/^ログアウトボタンを押す$/) do
  click_link "Logout"
end

ならば(/^公開ページを表示している$/) do
  should have_content('公開ページ')
end