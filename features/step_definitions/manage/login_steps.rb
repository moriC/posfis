もし(/^ログインページにアクセス$/) do
  visit '/users/sign_in'
end

もし(/^ログインフォームを入力する$/) do
	FactoryGirl.create :user
	fill_in 'user_email', :with => 'posfis@dev.com'
	fill_in 'user_password', :with => 'posfisdev'
	click_button "Sign in"
end

ならば(/^管理ページにアクセス$/) do
	visit '/manage'
end

ならば(/^管理ページ画面を表示している$/) do
	should have_content('管理ページ')
end