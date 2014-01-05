class Log < ActiveRecord::Base
	belongs_to :user ,:class_name => 'User', :foreign_key => 'for_user_id'
	belongs_to :log_type, :class_name => 'LogType', :foreign_key => 'log_type'
end
