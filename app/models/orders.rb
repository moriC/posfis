class Orders < ActiveRecord::Base
	belongs_to :buyer_user ,:class_name => 'User', :foreign_key => 'buyer_user_id'
  belongs_to :business_user ,:class_name => 'User', :foreign_key => 'business_user_id'
  belongs_to :manage_product
end
