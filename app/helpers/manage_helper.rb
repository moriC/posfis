module ManageHelper
	def format_date(date)
		p date.strftime("%Y年%m月%d日")
	end

	def format_user_type(user_type)
		if user_type == 0
			p "[システム管理者]"
		elsif user_type == 1
			p "[消費者]"
		elsif user_type == 2
			p "[生産者]"
		elsif user_type == 3
			p "[業者]"
		end
	end
end
