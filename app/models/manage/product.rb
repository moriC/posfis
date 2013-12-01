class Manage::Product < ActiveRecord::Base
	has_many :orders
end
