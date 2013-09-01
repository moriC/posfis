もし(/^公開ページにアクセス$/) do
  visit '/tops'
end

ならば(/^公開ページ画面を表示している$/) do
  should have_content('システム公開ページ')
end