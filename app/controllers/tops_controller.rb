class TopsController < ApplicationController
	before_action :set_params, only: [:show]


	# ユーザページ
	def index
	end

	def show
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_params
      @User = User.find(params[:id])
    end
end
