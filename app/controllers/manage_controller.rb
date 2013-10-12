class ManageController < ApplicationController
	layout 'manage'
	before_filter :authenticate_user!

	def index
	end
end
