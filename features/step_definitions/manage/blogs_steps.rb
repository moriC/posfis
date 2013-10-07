もし(/^ブログ一覧表示するページにアクセス$/) do
	visit '/manage/blogs'
end

ならば(/^ユーザが作成したブログ一覧が表示されている。$/) do
	should have_content('記事一覧')
end

もし(/^ブログ新規作成ページにアクセス$/) do
  visit '/manage/blogs/new'
end

ならば(/^新規投稿項目を入力する$/) do
  pending # express the regexp above with the code you wish you had
end

ならば(/^保存して投稿を押す$/) do
  pending # express the regexp above with the code you wish you had
end

ならば(/^投稿された結果が表示される$/) do
  pending # express the regexp above with the code you wish you had
end