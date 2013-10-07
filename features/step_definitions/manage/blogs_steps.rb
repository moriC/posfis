もし(/^ブログ一覧表示するページにアクセス$/) do
	visit '/manage/blogs'
end

ならば(/^ユーザが作成したブログ一覧が表示されている。$/) do
	should have_content('記事一覧')
end