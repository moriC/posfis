module Manage::ProductValueHelper
	def output_value(value)
		if value == 1
			p "☆"
		elsif value == 2
			p "☆☆"
		elsif value == 3
			p "☆☆☆"
		elsif value == 4
			p "☆☆☆☆"
		elsif value == 5
			p "☆☆☆☆☆"
		end
	end

end
