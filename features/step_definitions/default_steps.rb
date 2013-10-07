前提(/^一般ユーザがログインしている$/) do
	visit '/users/sign_in'
	FactoryGirl.create :user
	fill_in 'user_email', :with => 'posfis@dev.com'
	fill_in 'user_password', :with => 'posfisdev'
	click_button "Sign in"
end