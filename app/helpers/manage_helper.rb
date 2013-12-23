module ManageHelper
	def format_date(date)
		p date.strftime("%Y年%m月%d日")
	end

	def format_user_type(user_type)
		if user_type == 4
			p "[システム管理者]"
		elsif user_type == 1
			p "[消費者]"
		elsif user_type == 2
			p "[生産者]"
		elsif user_type == 3
			p "[業者]"
		end
	end

	def log_message(log_type)
		if log_type == 0
			p "システムメンテナンス"
		elsif log_type == 1
			p "システムアップデート"
		elsif log_type == 2
			p "ブログ掲載"
		elsif log_type == 3
			p "商品を購入されました"
		elsif log_type == 4
			p "商品を購入しました"
		end
	end	
end
