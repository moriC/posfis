class ProductValue < ActiveRecord::Base
	belongs_to :user
	belongs_to :order
	belongs_to :manage_product
end
