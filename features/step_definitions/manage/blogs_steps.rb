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
  fill_in 'blog[title]', :with => 'テスト'
	fill_in 'blog[contents]', :with => 'テスト投稿'
end

ならば(/^保存して投稿を押す$/) do
	click_button "Save Blog"
end

ならば(/^投稿された結果が表示される$/) do
  page.should have_content("新規ブログを正常に保存しました。")
end